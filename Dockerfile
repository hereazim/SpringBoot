FROM openjdk:latest
EXPOSE 8900
ADD . web-services.jar
ENTRYPOINT ['java','-jar','/web-services.jar']
