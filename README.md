[![push](https://github.com/xdsor/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/xdsor/devops-for-developers-project-74/actions/workflows/push.yml)
[![Actions Status](https://github.com/xdsor/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/xdsor/devops-for-developers-project-74/actions)

# DevOps for Developers — Project 74

## Environment Variables

Create a `.env` file in the project root (see `.env.example`):

| Variable | Description | Example |
|---|---|---|
| `DATABASE_HOST` | Database host | `db` |
| `DATABASE_PORT` | Database port | `5432` |
| `DATABASE_NAME` | Database name | `postgres` |
| `DATABASE_USERNAME` | Database user | `postgres` |
| `DATABASE_PASSWORD` | Database password | `password` |

## Commands

### `make test`

Runs tests on a **prod-like** environment (PostgreSQL). Builds the production Docker image, starts a PostgreSQL container, and executes the test suite.

```bash
make test
```

### `make dev`

Starts the **development** environment. Uses SQLite inside the app container and launches Caddy with a self-signed TLS certificate on `https://localhost`. The app source is mounted as a volume for live reloading.

```bash
make dev
```

The app is available at:

- **HTTPS:** https://localhost
- **HTTP (direct):** http://localhost:8080
