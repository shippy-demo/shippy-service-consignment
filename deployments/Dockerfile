FROM centos:latest

RUN mkdir /app
WORKDIR /app
RUN ls -alh
ADD server /app/consignment-service

CMD ["./consignment-service"]
