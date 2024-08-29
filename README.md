# Docker container to buimd yocto images

> :white_check_mark: Either *docker* or *podman* can be used in the following commands

## Build container
First, checkout this repository:
```bash
git checkout https://github.com/lucas-vallery/build-yocto-docker.git
```

Then the container image can be build using the following command:
```bash
podman build -t yocto-raspi-kirkstone .
```
*"yocto-raspi-kirkstone"* can be changed by whatever name you want to give to your container.