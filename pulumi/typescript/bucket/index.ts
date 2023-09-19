import * as pulumi from "@pulumi/pulumi";
import * as gcp from "@pulumi/gcp";

// Create a GCP resource (Storage Bucket)
const bucket = new gcp.storage.Bucket("ken-axtmann", {
  location: "northamerica-northeast1",
  publicAccessPrevention: "enforced",
  storageClass: "REGIONAL",
  uniformBucketLevelAccess: true,
});

// Export the DNS name of the bucket
export const bucketName = bucket.url;

// Enable Service APIs
let config = new pulumi.Config("gcp");
let projectId = config.require("project");

const project = new gcp.projects.Service("project", {
  disableDependentServices: true,
  project: projectId,
  service: "dataplex.googleapis.com",
});
