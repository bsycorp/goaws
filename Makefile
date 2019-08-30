.DEFAULT_GOAL := run

fmt:
	go fmt ./app/...

test:
	go test ./app/...

run: dep fmt test
	go run app/cmd/goaws.go

linux:
	GOOS=linux GOARCH=amd64 go build -o goaws_linux_amd64  app/cmd/goaws.go