.PHONY: build setup test test-production up down build-production push ci

build:
	docker-compose build

setup:
	docker-compose run --rm --volume ./app:/app app make setup

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

test-production:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
	docker compose up --abort-on-container-exit --exit-code-from app

up:
	docker-compose up

down:
	docker-compose down

build-production:
	docker compose build app

push:
	docker compose push app
