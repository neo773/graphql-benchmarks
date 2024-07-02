#!/bin/bash

# For gqlgen:
cd graphql/gqlgen
go build -o main main.go
cd ../../
# For apollo server:
cd graphql/apollo_server
npm i
cd ../../

# For netflix dgs
cd graphql/netflix_dgs
./gradlew build
cd ../../

# For tailcall:
curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/main/install.sh | bash -s
export PATH=$PATH:/root/.tailcall/bin

cargo install oha
