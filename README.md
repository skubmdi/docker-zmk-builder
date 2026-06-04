# ZMK Docker Build Guide

This guide explains how to set up and build your ZMK firmware using Docker.

## Setup

Copy the following two files under the ![template](template) directory into your ZMK repository root:
- `Dockerfile`
- `docker-compose.yaml`

---

## Usage

### 1. Build Firmware

Run the following command to build your firmware. 
(Note: The initial build will take longer to download and set up dependencies.)

* To build all configurations:
```bash
docker compose up
```

* To build a specific artifact:
```bash
docker compose up [artifact-name]
```


### 2. Update Environment

If you modify west.yml, you must rebuild the Docker image:
```bash
docker compose build --no-cache
```
