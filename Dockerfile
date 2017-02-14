FROM golang:latest
RUN mkdir -p src/github.com/marcusolsson
ADD . src/github.com/marcusolsson/pathfinder
WORKDIR src/github.com/marcusolsson/pathfinder
RUN curl https://glide.sh/get | sh && glide install
EXPOSE 8080
CMD ["go", "run", "cmd/pathfinder/main.go"]

