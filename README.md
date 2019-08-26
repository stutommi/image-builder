This simple script to publish any github project repo as a docker image in dockerhub

Requirements:

- Docker installed on computer
- Dockerhub account (you need to pass username and password when using)
- A single dockerfile in root of the github project

Usage:
  1. Build it like this:
    - "docker build -t image-builder ."
  2. Run the image formatted like this
  - "docker run -it -v /var/run/docker.sock:/var/run/docker.sock <insert-github-url-here.git>"
  - e.g: docker run -it -v /var/run/docker.sock:/var/run/docker.sock image-builder https://github.com/docker-hy/ml-kurkkumopo-frontend
  3. Enter dockerhub username & password when prompted.



Notes!
- The image needs to run with "-v" because we need to share the docker daemon for the container.
- Dockerfile is included to make it run inside container.
