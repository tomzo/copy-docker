# Copy.com in docker

This image let's you synchronize specified directory with copy.com cloud storage.

# Usage

```
docker run -ti --rm -e 'COPY_USERNAME=my@email.com' -e 'COPY_PASSWORD=mypassword' -v=/myfiles:/copy tomzo/copy-docker
```
