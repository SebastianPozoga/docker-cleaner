# docker-cleaner
This is docker-cleaner image source code. The project is to clean docker
automatically by [CRON](https://en.wikipedia.org/wiki/Cron).

## Run
You can run this app to clean once by
```bash:
docker run -it -v "/var/run/docker.sock:/var/run/docker.sock" spozoga/docker-cleaner clear
```
Run background clear service like:
```bash:
docker run -d -v "/var/run/docker.sock:/var/run/docker.sock" spozoga/docker-cleaner 
```
Run background clear service by [docker-compose](https://docs.docker.com/compose/s):
```bash:
docker-compose up
```


## Links
* This repo is inspirated by ["Docker - How to cleanup (unused) resources"](https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430)
