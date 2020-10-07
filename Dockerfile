FROM centos:7

COPY ajiasu /usr/bin/ 
COPY run.sh /
#COPY *.dat v2ray v2ctl /usr/bin/
#COPY config.json /etc/v2ray/config.json
COPY install-release.sh /
RUN bash /install-release.sh 
#COPY ajiasu.conf /etc/

RUN chmod +x /run.sh && \
    chmod +x /usr/local/bin/v2ray && \
    chmod +x /usr/local/bin/v2ctl &&\
    ln -s /usr/local/bin/v2ray /usr/bin/v2ray && \
    ln -s /usr/local/bin/v2ctl /usr/bin/v2ctl && \
    mkdir /usr/share/v2ray && \
    ln -s /usr/local/share/v2ray/geoip.dat /usr/share/v2ray/geoip.dat &&\
    ln -s /usr/local/share/v2ray/geoip.dat /usr/bin/geoip.dat &&\
    ln -s /usr/local/share/v2ray/geosite.dat /usr/share/v2ray/geosite.dat &&\
    ln -s /usr/local/share/v2ray/geosite.dat /usr/bin/geosite.dat &&\
    mkdir /etc/v2ray && \
    mv /usr/local/etc/v2ray/config.json /etc/v2ray/&& \
    ln -s /etc/v2ray/config.json /usr/local/etc/v2ray/config.json && \
    cp -f /etc/profile /etc/profile_


CMD ["/bin/sh", "-c", "/run.sh"]
