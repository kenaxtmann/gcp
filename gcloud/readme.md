# Setup Connection to GCP Cloud

## Log into GCP

- Log into your Google account with email: kaxtmann1@gmail.com
- Then go to this link [GCP Console](https://console.cloud.google.com)

## Install GCP Cloud SDK

- Follow instuctions at [GCP Cloud SDK](https://cloud.google.com/sdk/docs/install)
- Installed to "C:\Program Files (x86)\Google\Cloud SDK"

## Initialize the gcloud CLI

- Follow instructions at [Initializing the gcloud CLI](https://cloud.google.com/sdk/docs/initializing)
- Use the project: "ken-axtmann"
- Note I had to abort "gcloud init" and run "gcloud auth login"
- Note I also had to enable the "Compute API" to set the default region.
- Note I also had to re-open billing account for ken-axtmann project.
- Use "gcloud config list" to verfiy configuration
- Test working using "gcloud storage list"
