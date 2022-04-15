FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Asia/Novosibirsk

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt install -y python3-pip

RUN apt install -y nginx

COPY docker_requirements.txt .
RUN pip install -r docker_requirements.txt

EXPOSE 80
EXPOSE 8080

CMD ["bash"]