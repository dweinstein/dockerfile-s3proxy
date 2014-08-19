FROM dockerfile/java:latest
WORKDIR /opt
RUN git clone https://github.com/andrewgaul/s3proxy.git
RUN apt-get -q -y --no-install-recommends install maven
WORKDIR /opt/s3proxy
RUN mvn package

ADD ./config/s3proxy.conf /opt/s3proxy/s3proxy.conf

VOLUME /data
EXPOSE 8080


