FROM java:8-jdk
VOLUME /config
WORKDIR /app
RUN chmod 777 /app
EXPOSE 8888
COPY target/configServer.jar /app/configServer.jar
CMD ["/bin/sh", "-c", "java $JAVA_OPTS -jar /app/configServer.jar"]