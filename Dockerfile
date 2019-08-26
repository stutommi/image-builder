FROM ubuntu

WORKDIR /app
RUN apt-get update && apt install -y docker.io git && \
    git clone https://github.com/stutommi/image-builder.git . && \
    chmod +x ./create_image.sh
RUN ls /var/run
ENTRYPOINT ["./create_image.sh"]
