# Usa la imagen base de Ubuntu
FROM ubuntu:latest 

RUN apt-get update && apt-get install -y nginx git && rm -rf /var/lib/apt/lists/* # Clona el juego en el directorio correcto
RUN rm -rf /var/www/html/* && git clone https://github.com/josejuansanchez/2048 /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]