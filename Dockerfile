FROM ubuntu

WORKDIR /app
RUN apt-get update && apt install -y docker.io git
RUN git clone https://github.com/stutommi/image-builder.git .
USER app
RUN chmod +x ./create_image.sh
ENTRYPOINT ["./create_image.sh"]
