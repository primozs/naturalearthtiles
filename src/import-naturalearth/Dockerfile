FROM postgis/postgis:14-3.2
ENV IMPORT_DATA_DIR=/import \
    NATURAL_EARTH_DB=/import/natural_earth_vector.sqlite

RUN apt-get update && apt-get install -y wget unzip gdal-bin sqlite3

RUN wget --quiet http://naciscdn.org/naturalearth/packages/natural_earth_vector.sqlite.zip 
RUN unzip -oj natural_earth_vector.sqlite.zip -d "$IMPORT_DATA_DIR" 
RUN rm natural_earth_vector.sqlite.zip

COPY . /usr/src/app
WORKDIR /usr/src/app
CMD ["./import_natural_earth.sh"]
