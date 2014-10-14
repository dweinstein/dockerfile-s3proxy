FROM dockerfile/java:latest
WORKDIR /opt
RUN git clone https://github.com/dweinstein/s3proxy.git
RUN apt-get -q -y --no-install-recommends install maven
WORKDIR /opt/s3proxy
RUN mvn package

ADD ./config/s3proxy.conf /opt/s3proxy/s3proxy.conf

VOLUME /data
EXPOSE 8080

ENTRYPOINT ./target/s3proxy --properties ./s3proxy.conf

