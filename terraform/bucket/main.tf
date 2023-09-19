terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = ">=4.82"
        }
    }
}

locals {
  project = "ken-axtmann"
  region = "northamerica-northeast1"
  bucket_name = "ken-test-02"
}

provider google {
  project = local.project
  region  = local.region
}

resource "google_storage_bucket" "static" {
 name          = local.bucket_name
 location      = local.region
 storage_class = "REGIONAL"
 public_access_prevention = "enforced"
 uniform_bucket_level_access = true
}

# Enable APIs
resource "google_project_service" "storage_class" {
  project = local.project
  service = "storage.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "dataplex" {
  project = local.project
  service = "dataplex.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "dataproc" {
  project = local.project
  service = "dataproc.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "datacatalog" {
  project = local.project
  service = "datacatalog.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "bigqery" {
  project = local.project
  service = "bigquery.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "metastore" {
  project = local.project
  service = "metastore.googleapis.com"
  disable_on_destroy = false
}