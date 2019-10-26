build:
		protoc -I. --go_out=plugins=grpc:. \
				  proto/consignment/consignment.proto
		protoc -I. --go_out=plugins=grpc:. \
                  proto/vessel/vessel.proto
# 		GOOS=linux GOARCH=amd64 go build -o deployments/server cmd/consignment/server.go
# 		docker build -t shippy-service-consignment deployments
run: 
	docker run -p 50051:50051 shippy-service-consignment:latest
