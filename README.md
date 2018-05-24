# docker-image-ng

[![Build Status](https://travis-ci.org/chesszebra/docker-image-ng.svg?branch=master)](https://travis-ci.org/chesszebra/docker-image-ng)

A Docker image that wraps the Angular CLI application.

https://angular.io/guide/quickstart

## Usage

Basic usage:

```
docker run --rm -it -v $(pwd):/data chesszebra/ng
```

Create a new application:

```
docker run --rm -it -v $(pwd):/data chesszebra/ng new my-app
```

Serve an application:

```
docker run --rm --name cz-ng -it -v $(pwd):/data chesszebra/ng serve --host 0.0.0.0 --public-host cz-ng.docker
```

