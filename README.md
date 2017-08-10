# Paijo Websocket

## Requirement

- Ruby >=2.0 : <br />

- Docker : [http://docs.docker.com/installation/](http://docs.docker.com/installation/)

- docker-compose : [https://github.com/docker/compose/releases](https://github.com/docker/compose/releases)

## Run Instruction

### Without Docker
1. run this command
```bash
bundle install
```

2. Run the app
```bash
nohup bundle exec ruby app.rb &> /dev/null &
```

3. Checking the server 

Run this command in your browser console.
```bash
var ws = new WebSocket("ws://localhost:8081")
```

### Using Docker

1. Build and run the container with  `docker-compose build && docker-compose up -d`
2. Check whether the container have run `docker ps`
