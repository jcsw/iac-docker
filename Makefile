# Variables
DOCKER_CMD = docker
DOCKER_COMPOSE_CMD = docker compose -f

# Basic commands
running-components:
	$(DOCKER_CMD) ps -f name=iac-*

component-log:
	$(DOCKER_CMD) logs -f --taill 1000 $(component)

# MongoDB
mongodb-start:
	$(DOCKER_COMPOSE_CMD) ./components/mongodb/docker-compose.yml up -d

mongodb-stop:
	$(DOCKER_COMPOSE_CMD) ./components/mongodb/docker-compose.yml stop

mongodb-remove:
	$(DOCKER_COMPOSE_CMD) ./components/mongodb/docker-compose.yml down -v

mongodb-logs:
	$(DOCKER_COMPOSE_CMD) ./components/mongodb/docker-compose.yml logs -f

# Wiremock
wiremock-start:
	$(DOCKER_COMPOSE_CMD) ./components/wiremock/docker-compose.yml up -d

wiremock-stop:
	$(DOCKER_COMPOSE_CMD) ./components/wiremock/docker-compose.yml stop

wiremock-remove:
	$(DOCKER_COMPOSE_CMD) ./components/wiremock/docker-compose.yml down -v

wiremock-logs:
	$(DOCKER_COMPOSE_CMD) ./components/wiremock/docker-compose.yml logs -f

# Kafka
kafka-start:
	$(DOCKER_COMPOSE_CMD) ./components/kafka/docker-compose.yml up -d

kafka-stop:
	$(DOCKER_COMPOSE_CMD) ./components/kafka/docker-compose.yml stop

kafka-remove:
	$(DOCKER_COMPOSE_CMD) ./components/kafka/docker-compose.yml down -v

kafka-logs:
	$(DOCKER_COMPOSE_CMD) ./components/kafka/docker-compose.yml logs -f