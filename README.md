# docker-dovecot
Setup Dovecot on a systemd enabled redhat/ubi8 docker container

# Build docker image

```bash
docker build -t ubi8dovecot . --no-cache
```

# Run the container

```bash
docker run --privileged --rm -tid ubi8dovecot /sbin/init
```

# Login to the container and check dovecot status

```bash
docker ps  # get container id
docker exec -ti <container id> bash
systemctl status dovecot
```