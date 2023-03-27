FROM openjdk:latest
EXPOSE 8900
ADD target\web-services.war web-services.war
ENTRYPOINT ['java','-jar','/web-services.war']
