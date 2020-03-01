# OpenTTD Ubuntu 19.04 Docker Build
Docker image for building OpenTTD under Ubuntu 19.04


## Building image
To build this Dockerfile into an image run the following commands:

```
git clone git@github.com:marcin-jozwikowski/OpenTTD_Ubuntu_19.04_Docker_Build.git

cd OpenTTD_Ubuntu_19.04_Docker_Build

docker build -t openttd_builder .
```

## Building OpenTTD
To build OpenTTD from current source run 
```
docker run -ti -v ./:/OpenTTDReleases/ --rm openttd_builder
```
