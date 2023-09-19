# Pulumi Setup

## Upgrade Pulumi

- Get pulumi version using "pulumi version"
- Goto [Pulumi upgrade](https://pulumi.com/docs/reference/install/) and tun x64 installer
- Used "choco install pulumi --version 3.83.0"

## Setup GCP Login

```bash
    gcloud auth application-default login
```

## Create pulumi typescript project

```bash
    mkdir typescript
    cd typescript
    mkdir bucket
    cd bucket
    pulumi new gcp-typescript
    pulumi up
    pulumi destroy
```

## Deploy and Destroy

```bash
    pulumi up
    pulumi destroy
```

## Notes

- Setup pulumi to store state outside of github either in s3 bucket or use pulumi enterprise.
