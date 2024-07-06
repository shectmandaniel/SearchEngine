FROM openjdk:11
COPY target/searchengine*.jar /usr/src/searchengine.jar
COPY src/main/resources/application.properties /opt/conf/application.properties
CMD ["java", "-jar", "/usr/src/searchengine.jar", "--spring.config.location=file:/opt/conf/application.properties"]

