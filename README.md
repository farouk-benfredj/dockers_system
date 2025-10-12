# Git Docker Container

A lightweight Docker container .Built on **Ubuntu**.

---

## Features

- Ubuntu-based container
- Pre-installed Git and Bash
- Mount a host folder to work with Git repositories

---

## Getting Started

### 1. docker stuff:

```bash
# Build
docker build -t tag:version .
docker run -it --rm -v <host_path>:<mount_path> git-container
docker run -it -v <mount_path>:/workspace ubuntu bash
