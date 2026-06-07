# ZMK Docker Build Guide

This guide explains how to set up and build your ZMK firmware using Docker.

## Setup

Copy the following two files from the [template](template) directory into your ZMK repository root
- `Dockerfile`
- `docker-compose.yaml`

---

## Usage

### 1. Build Firmware

Run the following command to build your firmware: 
```bash
docker compose up
```
*Note: The initial build will take longer as it needs to download and set up dependencies.*

The build targets are automatically parsed and processed based on the configuration in build.yaml.

Once the build completes, the output files will be generated in the `output` folder.

The base filename (excluding the extension) will always be `[artifact-name]`. Depending on your configuration, the following files will be generated:

| File Type         | Extension             |
| -                 | -                     |
| Build log         | `.log`                |
| Firmware files    | `.uf2` `.hex` `.bin`  |
| Kconfig list      | `.config`             |
| Devicetree files  | `.dts` `.dts.pre`     |
| Other files       | `.elf` `.map` `.stat` |

### 2. Update Environment

If you modify `config/west.yml`, you must rebuild the Docker image to apply the changes:
```bash
docker compose build --no-cache
```
