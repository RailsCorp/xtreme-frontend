# xtreme-frontend

> xtreme application for frontend

## Build Setup

``` bash

$ git clone git@github.com:RailsCorp/xtreme-docker-alpha.git

$ cd xtreme-docker-alpha

$ git clone git@github.com:RailsCorp/xtreme-frontend.git

$ cd xtreme-frontend

$ docker-compose build

$ docker-sync start

$ docker exec -it xtreme_frontend sh (docker内に入る)

~# pwd  -> /home/xtreme_frontendだったらok

# yarn

すでにlocalhost:3001でサーバが立ち上がっているので、確認してみる

gitはmac上でcommitする
```


```
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn run dev

# build for production and launch server
$ yarn run build
$ yarn start

# generate static project
$ yarn run generate
```

For detailed explanation on how things work, checkout [Nuxt.js docs](https://nuxtjs.org).
