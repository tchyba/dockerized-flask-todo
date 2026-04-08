## Clone the repository

```bash
git clone https://github.com/tchyba/dockerized-flask-todo.git
```

## Build the Docker container

```bash
docker build -t todo-app .
```

## Run it

```bash
docker run -d --name todo-app -p 127.0.0.1:8080:8080 todo-app
```

## Then enter the IP and port in the address bar

```bash
127.0.0.1:8080
```

## Stop/start the container

```bash
docker stop/start todo-app
```