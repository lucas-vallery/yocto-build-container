# Docker container to build yocto images

Either *docker* or *podman* can be used in the following commands

## Pulling the image
```bash
docker pull ghcr.io/lucas-vallery/yocto-build-container:sha256-66a548592d296bf4e7df60ca86f50ec2011473f9a9c9e384aa6e8250e70a597c
```

## Build image manually
First, checkout this repository:
```bash
git checkout https://github.com/lucas-vallery/yocto-build-docker.git
```

Then the container image can be build using the following command:
```bash
docker build -t yocto-raspi-kirkstone .
```
*"yocto-raspi-kirkstone"* can be changed by whatever name you want to give to your container.

## Container directories

|      Directory      |     Purpose          |
|---------------------|----------------------|
|/home/user/sources   | Yocto sources        |
|/home/user/localconf | Yocto local conf     |
|/home/user/outputs   | Yocto build products |

You can mount your yocto sources to the container using:
```bash
docker run --rm -it \
-v ./yocto_sources/:/home/user/sources \
-v ./raspberrypi-zero-conf/:/home/user/localconf \
-v ./outputs/:/home/user/outputs
yocto-raspi-kirkstone:latest
```

## Tips
### Run the container with bash as entry point
To run the container and access is terminal:
```bash
docker run --rm -it --entrypoint bash yocto-raspi-kirkstone:latest
```
