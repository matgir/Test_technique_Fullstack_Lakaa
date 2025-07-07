all: build start

build:
	docker compose up -d --build

start:
	docker compose start
	docker compose logs --timestamps -f

stop:
	docker compose stop

restart: stop start

rebuildstart: stop all

prune:
	-docker stop $$(docker ps -aq)
	-docker rm -f $$(docker ps -aq)
	-docker rmi -f $$(docker image ls -aq)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q)
	docker system prune -af

reprunestart: prune all

.PHONY: all build start stop restart rebuildstart prune reprunestart