# Usa la imagen base de Ubuntu
FROM ubuntu:latest 

# Instala nginx y git sin interacción
RUN apt-get update && apt-get install -y nginx git && rm -rf /var/lib/apt/lists/* # Clona el juego en el directorio correcto
RUN rm -rf /var/www/html/* && git clone https://github.com/josejuansanchez/2048 /var/www/html/

# Expone el puerto 80
EXPOSE 80

# Requisito 1.3.5: Mantener Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]