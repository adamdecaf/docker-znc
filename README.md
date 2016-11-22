# docker-znc

ZNC running inside a docker container.

## Usage

You can run the container without options (`docker run -it adamdecaf/docker-znc`) and it'll generate a znc configuration for you. It's better if you mount in your config under the `/home/znc` folder in a file called `.znc`.

```
docker run -v config/:/home/znc/ -it adamdecaf/docker-znc:latest
```
