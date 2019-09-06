# sinatra-docker-sample

```bash
docker build . -t app
docker run -v `pwd`:/app -p 80:80 -it --rm -d app
```
