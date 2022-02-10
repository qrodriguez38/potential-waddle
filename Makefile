UID := $(shell id -u)
GID := $(shell id -g)
COMPOSE := USER_ID=$(UID) GROUP_ID=$(GID) docker-compose
DEFAULT := docker/docker-compose.yaml

build:
	$(COMPOSE) -f $(DEFAULT) build 

start:
	$(COMPOSE) -f $(DEFAULT) up -d

stop:
	$(COMPOSE) -f $(DEFAULT) down

shell:
	$(COMPOSE) -f $(DEFAULT) exec php sh

ps:
	$(COMPOSE) -f $(DEFAULT) ps