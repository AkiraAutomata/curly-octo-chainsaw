.PHONY: up down logs shell mongo-shell build install clean help

# Default target
.DEFAULT_GOAL := help

# Variables
APP_CONTAINER = crud-app
MONGO_CONTAINER = mongodb

# Docker Compose commands
up: ## Start the application and MongoDB containers
	docker compose up -d

down: ## Stop and remove the application and MongoDB containers
	docker compose down

logs: ## View application logs
	docker compose logs -f $(APP_CONTAINER)

shell: ## Access the application container shell
	docker exec -it $(APP_CONTAINER) sh

mongo-shell: ## Access the MongoDB shell
	docker exec -it $(MONGO_CONTAINER) mongosh

build: ## Rebuild the application container
	docker compose build

# Development commands
install: ## Install dependencies
	npm install

dev: ## Run the application in development mode
	npm run dev

# Utility commands
clean: ## Remove node_modules and build artifacts
	rm -rf node_modules

help: ## Display this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
