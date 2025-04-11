FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y vim nginx && \
    apt-get clean

COPY app.sh /usr/local/bin/app.sh
RUN chmod +x /usr/local/bin/app.sh

CMD ["/usr/local/bin/app.sh"]
