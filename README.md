# docker-image-ng

[![Build Status](https://travis-ci.org/chesszebra/docker-image-ng.svg?branch=master)](https://travis-ci.org/chesszebra/docker-image-ng)

A Docker image to run the Angular CLI tools.

See also https://angular.io/guide/quickstart

## Usage

### Basic usage
Make sure to always map a directory to the `/data` directory within the container.

```
docker run \
    --rm \
    -it \
    -v $(pwd):/data \
    chesszebra/ng
```

### Examples

Create a new application:

```
docker run \
    --rm \
    -it \
    -v ~/.gitconfig:/home/node/.gitconfig \
    -v $(pwd):/data \
    chesszebra/ng \
    new my-app
```

To serve an application, it might be wise to set the container name. That way you can refer to it which can be useful 
in cases like DNS requests.

```
docker run \
    --rm \
    --name my-container \
    -it \
    -v $(pwd):/data \
    chesszebra/ng \
    serve --host 0.0.0.0 --public-host my-container.docker
```
