FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y wget git curl libssl-dev openssl nano unzip python build-essential g++ gdal-bin awscli && \
    curl -sL https://deb.nodesource.com/setup_4.x | bash &&\
    apt-get install -y nodejs && \
    npm install -g yarn@0.16.1 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    mkdir -p /app

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm -g config set user root

# RUN npm install -g \
#           tl@0.10.2 \
#           @mapbox/tilelive@v6.1.0 \
#           @mapbox/tilelive-vector@4.2.0 \
#           @mapbox/mbtiles@v0.10.0 \
#           tilelive-tmsource@0.8.2 \      
#           @mapbox/tilelive-bridge@v3.2.1 \
#           mapnik@v4.5.9 \          
#           @mapbox/tilelive-mapnik@^1.0.0

# RUN npm install -g \
#           tl@0.10.2 \
#           mapnik@3.5.x \
#           mbtiles@^0.9.0 \
#           tilelive@5.12.x \
#         # tilelive-tmsource@0.8.2 \      
#         # tilelive-tmsource@0.6.0 \      
#         # tilelive-tmsource@0.5.x \   
#           tilelive-tmsource@0.4.x \      
#           tilelive-vector@3.9.x \
#           tilelive-bridge@2.3.x \
#           tilelive-s3@^6.4.3 \
#           tilelive-file@^0.0.3 \
#           tilelive-mapnik@^0.6.18          

RUN npm install -g \
          tl@0.8.x \
          mapnik@3.5.x \
          mbtiles@0.8.x \
          tilelive@5.12.x \
          tilelive-tmsource@0.4.x \
          tilelive-vector@3.9.x \
          tilelive-bridge@2.3.x \
          tilelive-mapnik@0.6.x

VOLUME /data/tm2source /data/export
ENV SOURCE_PROJECT_DIR=/data/tm2source EXPORT_DIR=/data/export TILELIVE_BIN=tl
COPY . /usr/src/app/

CMD ["/usr/src/app/export-local.sh"]
