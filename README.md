# Terraform Tools

The Ubuntu image with Terraform tools installed...

```
docker build --tag johnmorsley/alpine-with-terraform .
```

```
docker run -it johnmorsley/alpine-with-terraform ./bin/sh
```

or

```
winpty docker run -it johnmorsley/alpine-with-terraform ./bin/sh
```

## Push image to Docker Hub

If you have 2FA enabled, as I do, genereate an Access Token via Docker Hub, then:

```
docker login --username johnmorsley
```

For the password, use the access token, created above.

```
docker push johnmorsley/alpine-with-terraform
```