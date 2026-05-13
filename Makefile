build:
	docker compose -f docker-compose.yml build
test: build
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
ci: test
publish: ci
	docker compose -f docker-compose.yml push app