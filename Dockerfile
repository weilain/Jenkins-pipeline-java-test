FROM harbor.k8s.com/k8s/java8

WORKDIR /app
ENV TZ=Asia/Shanghai

ADD target/mytest-0.0.1-SNAPSHOT.jar  app.jar

RUN bash -c 'touch /app.jar'

EXPOSE 8088

ENTRYPOINT ["java","-Xmx200m","-jar","/app/app.jar"]