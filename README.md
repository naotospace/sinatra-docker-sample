# nginx * puma * sinatra

```bash
docker run -v `pwd`:/app -v `pwd`/conf/puma.conf:/etc/nginx/conf.d/puma.conf -p 80:80 -it puma_sinatra bash

puma -C config/puma.rb
service nginx start

```

