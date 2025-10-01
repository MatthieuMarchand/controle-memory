FROM nginx:latest

RUN apt update && apt install -y file && rm -rf /var/lib/apt/lists/*

WORKDIR /var/concentration/html

COPY html/ .
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
