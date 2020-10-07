FROM centos:7

COPY ajiasu /usr/bin/ 
COPY run.sh /
COPY *.dat v2ray v2ctl /usr/bin/
COPY config.json /etc/v2ray/config.json
COPY ajiasu.conf /etc/

RUN chmod +x /run.sh && \
    chmod +x /usr/bin/v2ray && \
    chmod +x /usr/bin/v2ctl &&\
    mkdir /var/log/v2ray/ && \
    cp -f /etc/profile /etc/profile_


CMD ["/bin/sh", "-c", "/run.sh"]
