# ZMK Docker Build Guide

This guide explains how to set up and build your ZMK firmware using Docker.

## Setup

Copy the following two files under the [template](template) directory into your ZMK repository root:
- `Dockerfile`
- `docker-compose.yaml`

---

## Usage

### 1. Build Firmware

Run the following command to build your firmware. 
(Note: The initial build will take longer to download and set up dependencies.)

* To build all configurations: `docker compose up`
* To build a specific artifact: `docker compose up [artifact-name]`

The build results will be output to the output folder.

* Writable files: `[artifact-name].{bin,elf,hex,map,stat,uf2}`
* Kconfig file: `[artifact-name].config`
* Devicetree file: `[artifact-name].dts or [artifact-name].dts.pre`


### 2. Update Environment

If you modify west.yml, you must rebuild the Docker image: `docker compose build --no-cache`
