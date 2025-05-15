# curly-octo-chainsaw

A simple CRUD application built with Node.js, Express, and MongoDB.

## Features

- RESTful API with Express
- MongoDB database integration
- Docker and Docker Compose setup
- Makefile for easy commands
- Basic user management operations (Create, Read, Update, Delete)

## Prerequisites

- [Node.js](https://nodejs.org/) (v14 or higher)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Make](https://www.gnu.org/software/make/) (optional, for using the Makefile)

## Getting Started

### Using Docker (Recommended)

```bash
# Clone the repository
git clone https://github.com/yourusername/curly-octo-chainsaw.git
cd curly-octo-chainsaw

# Start the application and MongoDB
make up

# Or using Docker Compose directly
docker-compose up
```

### Manual Setup

```bash
# Clone the repository
git clone https://github.com/yourusername/curly-octo-chainsaw.git
cd curly-octo-chainsaw

# Install dependencies
npm install

# Start MongoDB (you need MongoDB installed locally or use a remote instance)
# Update the .env file with your MongoDB connection string

# Start the application
npm start
```

## API Documentation

This project includes Swagger documentation for all API endpoints. You can access the interactive API documentation at:

```
http://localhost:9999/api-docs
```

### API Endpoints

#### Users

- `GET /api/users` - Get all users
- `GET /api/users/:id` - Get a specific user
- `POST /api/users` - Create a new user
- `PUT /api/users/:id` - Update a user
- `DELETE /api/users/:id` - Delete a user

## Environment Variables

Create a `.env` file in the root directory with the following variables:

```
PORT=3000
MONGODB_URI=mongodb://mongodb:27017/crud-app
NODE_ENV=development
```

## Makefile Commands

- `make up` - Start the application and MongoDB
- `make down` - Stop the application and MongoDB
- `make logs` - View application logs
- `make shell` - Access the application container shell
- `make mongo-shell` - Access the MongoDB shell

## CI/CD and Code Quality

### GitHub Actions

This project includes GitHub Actions workflows for continuous integration:

- **CI Workflow**: Runs linting, tests, and Docker build validation
- **Semgrep Workflow**: Performs static code analysis to identify security issues and bugs

### Semgrep

Semgrep is configured to scan the codebase for:

- JavaScript and Node.js best practices
- Express.js security issues
- MongoDB injection vulnerabilities
- OWASP Top 10 security risks
- General security issues

To run Semgrep locally:

```bash
# Install Semgrep
pip install semgrep

# Run the scan
semgrep --config=.semgrep.yml .
```

## License

MIT
