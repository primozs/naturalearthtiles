FROM postgis/postgis:14-3.2

RUN apt-get update && apt-get install -y wget 

ENV VT_UTIL_DIR=/opt/postgis-vt-util \
    VT_UTIL_URL="https://raw.githubusercontent.com/mapbox/postgis-vt-util/v1.0.0/postgis-vt-util.sql"

RUN mkdir -p "$VT_UTIL_DIR" \
 && wget -P "$VT_UTIL_DIR" --quiet "$VT_UTIL_URL"

COPY . /usr/src/app/
WORKDIR /usr/src/app
CMD ["./create_schema.sh"]
