all: build

protos :=	fqdn/fqdn.proto

build:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative $(protos)

clean:
	find . -name "*.go" | xargs rm
