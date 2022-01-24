DC = docker-compose

all:
	mkdir -p /home/kalexand/data/db
	mkdir -p /home/kalexand/data/wp
	$(DC) -f srcs/docker-compose.yaml --env-file srcs/.env up --build -d

up:
	$(DC) -f srcs/docker-compose.yaml --env-file srcs/.env up -d

stop:
	$(DC) -f srcs/docker-compose.yaml stop

down:
	$(DC) -f srcs/docker-compose.yaml down

ps:
	$(DC) -f srcs/docker-compose.yaml ps
