# Docker container to build yocto images

Either *docker* or *podman* can be used in the following commands

## Build container
First, checkout this repository:
```bash
git checkout https://github.com/lucas-vallery/yocto-build-docker.git
```

Then the container image can be build using the following command:
```bash
podman build -t yocto-raspi-kirkstone .
```
*"yocto-raspi-kirkstone"* can be changed by whatever name you want to give to your container.

## Container directories
|    Directory    |    Purpose    |
|-----------------|---------------|
|/opt/sources     | Yocto sources |

## Tips
### Run the container with bash as entry point
To run the container and access is terminal:
```bash
podman run --rm -it --entrypoint bash yocto-raspi-kirkstone:latest
```
