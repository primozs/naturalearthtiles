# natural earth tiles

[Recreate this project](https://klokantech.github.io/naturalearthtiles/)

## Build docker images

Run `make`

## Workflow

1. start db `docker-compose up -d postgis`

2. import naturalearth `docker-compose run import-naturalearth`

3. set db schema `docker-compose run db-schema`

4. export `docker-compose run export-vectortiles`

5. studio `docker-compose up mapbox-studio`
