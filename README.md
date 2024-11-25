# Python Application in Docker

## Introduction
This project showcases a simple Python application containerized using Docker. It features a lightweight Flask-based API that returns the current time and integrates a CI/CD pipeline to automate builds and deployments via GitHub Actions.

## Features
- **Flask API**: Provides the current time as a response.
- **Dockerized Setup**: Encapsulates the application for easy deployment.
- **CI/CD Pipeline**: Automates Docker image builds and pushes to Docker Hub when changes are made to the `main` branch.

## Getting Started

### Prerequisites
- [Docker](https://www.docker.com/)
- [GitHub Actions](https://github.com/features/actions)

### Installation and Usage
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo-name.git
   cd your-repo-name
   ```

2. **Build the Docker Image**:
   ```bash
   docker build -t my-python-app .
   ```

3. **Run the Container**:
   ```bash
   docker run -p 5000:5000 my-python-app
   ```

4. **Access the API**:
   Open your browser or API client and navigate to `http://localhost:5000`.

### Example API Response
```json
{
  "current_time": "2024-11-24T12:00:00"
}
```

## CI/CD Pipeline

### Overview
This project employs GitHub Actions to automate the build and deployment process:
1. **Trigger**: Any push to the `main` branch.
2. **Steps**:
   - Build the Docker image.
   - Authenticate with Docker Hub.
   - Push the image to Docker Hub.

### GitHub Actions Workflow File
Located at `.github/workflows/ci.yml`, the workflow handles all automation tasks.

## Project Structure
```
.
├── src/
│   ├── main.py           # Core Python application
├── requirements.txt      # Application dependencies
├── Dockerfile            # Docker image configuration
├── .github/
│   ├── workflows/
│       ├── ci.yml        # CI/CD pipeline configuration
├── README.md             # Project documentation
```
