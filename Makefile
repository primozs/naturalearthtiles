.PHONY: all

all: export-vectortiles db-schema import-naturalearth raster-datasource

export-vectortiles:
	docker build -t susa/export-vectortiles src/export-vectortiles

db-schema:
	docker build -t susa/db-schema src/db-schema

import-naturalearth:
	docker build -t susa/import-naturalearth src/import-naturalearth

raster-datasource:
	docker build -t susa/raster-datasource src/raster-datasource
