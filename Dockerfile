FROM armhf/alpine
MAINTAINER theorician

ADD setup_user.sh /root/
RUN /root/setup_user.sh

ADD setup_octoprint.sh /root/
RUN /root/setup_octoprint.sh

ADD setup_curaengine.sh /root/
RUN /root/setup_curaengine.sh

USER user
EXPOSE 5000
CMD /usr/bin/octoprint