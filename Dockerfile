FROM eclipse-temurin:17-alpine

ENV MAVEN_VERSION 3.9.4

WORKDIR /project

#install maven
RUN wget https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar -xf apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    mv apache-maven-${MAVEN_VERSION} /usr/local/bin/  && \
    rm -f apache-maven-${MAVEN_VERSION}-bin.tar.gz

COPY shell.sh /usr/local/bin/
CMD ["sh","/usr/local/bin/shell.sh"]