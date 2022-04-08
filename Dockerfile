FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Asia/Novosibirsk

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install -y nginx

EXPOSE 80

CMD ["bash"]