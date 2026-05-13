build:
	docker-compose -f docker-compose.override.yml build
test:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
publish: build
	docker-compose -f docker-compose.yml push app