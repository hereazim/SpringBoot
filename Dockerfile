FROM openjdk:latest
EXPOSE 8900
ADD target\web-services.war web-services.war
ENTRYPOINT ['java','-war','/web-services.war']
