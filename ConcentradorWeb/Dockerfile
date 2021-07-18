FROM nginx:1.11-alpine

LABEL Descripción="Concentrador-Web" \
	  Autor="ARQ-DIG" \
	  Versión="0.0.1"

ENV APP_NAME=fps-web-concentrador
ARG APP_WORKDIR=/var/www/html/$APP_NAME

RUN export TZ='America/Lima' && \
    apk add --no-cache tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    mkdir -p $APP_WORKDIR && chmod 777 $APP_WORKDIR && \
    rm -r /etc/nginx/nginx.conf && rm -r /etc/nginx/conf.d/default.conf

COPY docker/nginx/nginx.conf /etc/nginx/
COPY docker/nginx/conf.conf /etc/nginx/conf.d/
COPY dist/$APP_NAME $APP_WORKDIR
CMD ["nginx", "-g", "daemon off;"]
