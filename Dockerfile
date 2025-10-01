FROM nginx:stable

WORKDIR /var/concentration

RUN apt-get update && apt-get install -y file && rm -rf /var/lib/apt/lists/*

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY html/ /var/concentration/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
