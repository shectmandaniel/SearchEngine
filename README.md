# Web Crawler Service

This project is a web crawler service built with Spring Boot, Redis, and Elasticsearch. It provides RESTful endpoints for initiating web crawls, retrieving crawl status, and sending crawl requests to Kafka.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Configuration](#configuration)
- [License](#license)

## Features

- Initiates web crawls and retrieves crawl status.
- Integrates with Kafka for sending crawl requests.
- Utilizes Redis for storing crawl information.
- Indexes crawled web pages in Elasticsearch.
- Provides a Swagger UI for API documentation and testing.

## Prerequisites

- Java 11 or higher
- Maven 3.6.3 or higher
- Redis
- Elasticsearch
- Kafka

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/web-crawler-service.git
   cd web-crawler-service
   ```
2. Build the project:
   ```bash
   mvn clean install
   ```
3. Copy the example configuration file and make necessary changes:
```bash
cp src/main/resources/application.properties.example src/main/resources/application.properties
```
Edit `src/main/resources/application.properties` to configure your Redis, Elasticsearch, and Kafka settings.

## Usage
The web crawler service can be accessed via the provided RESTful API endpoints. You can use tools like `curl` or Postman to interact with the API or using the swagger-ui.

## API Endpoints

### Start a Crawl

- **URL:** `/api/crawl`
- **Method:** `POST`
- **Request Body:**
  
  ```json
  {
    "url": "http://example.com",
    "maxDistance": 3,
    "maxUrls": 100,
    "maxTime": 300000
  }
  ```
- **RESPONSE:** "crawlId"

### Get Crawl Status

- **URL:** `/api/crawl/{crawlId}`
- **Method:** `GET`
- **Response:**
  
  ```json
  {
    "distance": 2,
    "startTime": 1625248740000,
    "numPages": 10,
    "stopReason": null
  }

### Send Kafka Message

- **URL:** `/api/sendKafka`
- **Method:** `POST`
- **Request Body:**
  
  ```json
  {
    "url": "http://example.com",
    "maxDistance": 3,
    "maxUrls": 100,
    "maxTime": 300000
  }

## Configuration

The project includes a Swagger configuration for easy API documentation and testing. After starting the application, you can access the Swagger UI at:
**http://localhost:8080/swagger-ui.html**

## Deployment

To deploy using Docker Compose, run the following command:

```bash
docker-compose up -d
```
Make sure to update docker-compose.yml according to your environment configuration needs.



  

