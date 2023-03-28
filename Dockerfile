FROM openjdk:latest
EXPOSE 8900
COPY C:\Jenkins\.jenkins\workspace\PipelineOne\target\web-services.war web-services.war
ENTRYPOINT ['java','-jar','/web-services.war']
