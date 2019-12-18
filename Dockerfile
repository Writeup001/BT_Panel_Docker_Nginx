FROM centos:7
WORKDIR /BT_Panel_Docker_Nginx
COPY /Environment .
RUN yum  install -y wget && \
    sh install_6.0.sh && \
    sh /www/server/panel/install/install_soft.sh 1 install nginx 1.16 && \
    sh /www/server/panel/install/install_soft.sh 1 install php 5.6 && \
    sh /www/server/panel/install/install_soft.sh 1 install mysql 5.6 && \
    sh BT_Panel_Docker_nginx.sh && \
    ln BT_Panel_Docker_nginx.sh /etc/init.d/BT_Panel_Docker_nginx.sh && \
    ln BT_Panel_Docker_nginx.sh /etc/profile.d/BT_Panel_Docker_nginx.sh && \
    chkconfig --add BT_Panel_Docker_nginx.sh && \
    chkconfig BT_Panel_Docker_nginx.sh on


