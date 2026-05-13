build:
	docker compose -f docker-compose.yml build
test: build
	cp .env.example .env
	docker compose -f docker-compose.yml --env-file=.env up --abort-on-container-exit --exit-code-from app
ci: test
publish: ci
	docker compose -f docker-compose.yml push app
dev:
	docker compose build
	docker compose up