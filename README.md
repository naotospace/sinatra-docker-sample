# sinatra-docker-sample

```bash
docker build . -t app -f app.dockerfile
docker run -v `pwd`:/app -p 80:80 -it --rm -d app
```

# nginx * unicorn * sinatra

```bash
unicorn -c /app/unicorn.rb -E development -D
cat /app/tmp/pids/unicorn.pid  | xargs kill -QUIT

```
