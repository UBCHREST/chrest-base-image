# CHREST Base Image
Image to include the required apt-get dependencies for other images.

## To build locally

```
docker buildx build . --file Dockerfile --tag=chrest-base-image
```