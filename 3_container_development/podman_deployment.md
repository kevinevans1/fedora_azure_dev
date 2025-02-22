# Installing Podman on Fedora

Podman is a daemonless container engine for developing, managing, and running OCI Containers on your Linux system. It is an open-source project that was donated by Red Hat to the Cloud Native Computing Foundation (CNCF).

## Prerequisites

Before you begin, ensure you have the following:

- A Fedora Linux system (Fedora 37 or above recommended)
- A user account with `sudo` privileges
- Internet connectivity

## Step 1: Update Your System

First, update your system to ensure all packages are up to date.

```bash
sudo dnf update -y
```

### Step 2: Install Podman
Install Podman using the DNF package manager.

```bash
sudo dnf install -y podman
```
### Step 3: Verify the Installation
Check the version of Podman to ensure it is installed correctly.

```bash
podman --version
```

### Step 4: Basic Usage
Here are a few basic commands to get you started with Podman:

Pull an Image
Pull an image from a container registry.

```bash
podman pull docker.io/library/alpine
```
### Run a Container
Run a container using the pulled image.

```bash
podman run -it --rm docker.io/library/alpine sh
```

### List Running Containers
List all running containers.

```bash
podman ps -a
```

### Remove a Container
Remove a container by its container ID or name.
```bash
podman rm <container_id_or_name>
```
### Remove an Image
Remove an image by its image ID or name.
```bash
podman rmi <image_id_or_name>
```
### Here is a user-friendly guide for installing Podman on Fedora, including a mention of Red Hat's donation of Podman to the CNCF:

```markdown
# Installing Podman on Fedora

Podman is a daemonless container engine for developing, managing, and running OCI Containers on your Linux system. It is an open-source project that was donated by Red Hat to the Cloud Native Computing Foundation (CNCF).

## Prerequisites

Before you begin, ensure you have the following:

- A Fedora Linux system (Fedora 37 or above recommended)
- A user account with `sudo` privileges
- Internet connectivity

## Step 1: Update Your System

First, update your system to ensure all packages are up to date.

```bash
sudo dnf update -y
```

## Step 2: Install Podman

Install Podman using the DNF package manager.

```bash
sudo dnf install -y podman
```

## Step 3: Verify the Installation

Check the version of Podman to ensure it is installed correctly.

```bash
podman --version
```

You should see output indicating the version of Podman installed on your system.

## Step 4: Basic Usage

Here are a few basic commands to get you started with Podman:

### Pull an Image

Pull an image from a container registry.

```bash
podman pull docker.io/library/alpine
```

### Run a Container

Run a container using the pulled image.

```bash
podman run -it --rm docker.io/library/alpine sh
```

### List Running Containers

List all running containers.

```bash
podman ps
```

### List All Containers

List all containers, including stopped ones.

```bash
podman ps -a
```

### Remove a Container

Remove a container by its container ID or name.

```bash
podman rm <container_id_or_name>
```

### Remove an Image

Remove an image by its image ID or name.

```bash
podman rmi <image_id_or_name>
```

## Conclusion

You have successfully installed Podman on Fedora Linux. Podman is a powerful tool for managing containers and is now part of the CNCF, ensuring its continued development and support.

For more information and advanced configurations, refer to the [official Podman documentation](https://podman.io/getting-started/installation).

By following these steps, you can start using Podman to manage your containers efficiently and effectively.
```



