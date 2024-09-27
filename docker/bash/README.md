# Bash Docker Image

This Dockerfile builds an image with bash, tabry, and one example tabry file installed, for testing purposes.

To test with this docker image, run these commands from the root project folder:

```sh
docker build -t bash-tabry -f docker/bash/Dockerfile .
docker run --rm -it bash

> source <(tabry bash /tabry/)
foo <<tab>> # shows completions
```