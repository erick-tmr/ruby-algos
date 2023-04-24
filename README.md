# Ruby env for coding challenges
A simple setup using Docker to run specs for coding challenges.

## Build image
```shell
docker build . -t ruby-env
```

## Run
```shell
docker run -it \
  --name ruby-env-container \
  --mount type=bind,source="$(pwd)",target=/app \
  ruby-env
```
