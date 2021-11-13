---
title: "Getting started with Docker"

---



## Fedora Release


```bash
    cat /etc/redhat-release
    Fedora release 34 (Thirty Four)
```


## Official Docker Instructions for Fedora

These instructions are from: 

[https://docs.docker.com/engine/install/fedora/](https://docs.docker.com/engine/install/fedora/)

### Install pointers to Docker repositories

```bash
sudo dnf -y install dnf-plugins-core

sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
```

### Install Docker packages

These packages are pulled from the Docker repositories and installed

```bash
sudo dnf install docker-ce docker-ce-cli containerd.io
```

### Add yourself to the *docker* user group


```bash
sudo usermod -aG docker jjesus
newgrp docker
```


### Start Docker


```bash
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo systemctl start docker
```


### Run hello world docker

```bash
docker run hello-world
```

### More to learn


Build Docker image from other images using Multi-Stage Build


[https://docs.docker.com/develop/develop-images/multistage-build/](https://docs.docker.com/develop/develop-images/multistage-build/)


Docker overlay filesystem with mount and volume


[https://docs.docker.com/storage/volumes/](https://docs.docker.com/storage/volumes/)

[https://docs.docker.com/storage/bind-mounts/](https://docs.docker.com/storage/bind-mounts/)



*Beginning Kubernetes*

[https://docs.docker.com/get-started/kube-deploy/](https://docs.docker.com/get-started/kube-deploy/)


