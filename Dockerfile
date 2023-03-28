FROM openjdk:latest
EXPOSE 8900
ADD . web-services.war
ENTRYPOINT ['java','-jar','/web-services.war']
