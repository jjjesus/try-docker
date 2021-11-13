# Fedora Release


```bash
    cat /etc/redhat-release
    Fedora release 34 (Thirty Four)
```


# Official Docker Instructions for Fedora

https://docs.docker.com/engine/install/fedora/

sudo dnf -y install dnf-plugins-core

sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

sudo usermod -aG docker jjesus
newgrp docker

docker run hello-world

sudo systemctl enable docker.service
sudo systemctl enable containerd.service



Build Docker image from other images using Multi-Stage Build


https://docs.docker.com/develop/develop-images/multistage-build/


Docker overlay filesystem with mount and volume

https://docs.docker.com/storage/volumes/

https://docs.docker.com/storage/bind-mounts/



Beginning Kubernetes

https://docs.docker.com/get-started/kube-deploy/


