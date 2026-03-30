.PHONY: build setup test up down

build:
	docker-compose build

setup:
	docker-compose run --rm app make setup

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

up:
	docker-compose up

down:
	docker-compose down
