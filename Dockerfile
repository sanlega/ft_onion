FROM nginx

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install tor openssh-server -y

RUN useradd -m -s /bin/bash cebolla && echo "cebolla:slegaris" | chpasswd
RUN mkdir -p /var/lib/tor/my_website/
RUN chmod 700 /var/lib/tor/my_website/
RUN chown -R debian-tor /var/lib/tor/my_website/

COPY files/torrc /etc/tor/torrc
COPY files/sshd_config /etc/ssh/sshd_config
COPY files/index.html /usr/share/nginx/html/index.html

EXPOSE 80
EXPOSE 4242
EXPOSE 9050

CMD service ssh start && \
    service tor start && \
    echo 🧅 "\033[1;31mTOR site url:\033[0m \033[1;32m$(cat /var/lib/tor/my_website/hostname)\033[0m" && \
    nginx -g 'daemon off;'
