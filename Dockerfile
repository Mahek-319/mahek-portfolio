FROM nginx:alpine

LABEL maintainer="Mahek Gupta"

WORKDIR /usr/share/nginx/html

COPY index.html .
COPY style.css .
COPY assets/ ./assets/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
