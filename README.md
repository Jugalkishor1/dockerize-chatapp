# Chatting app

## Description

Chatting app is a simple chat application built during the training period. It allows users to make friends, communicate with them in real-time using WebSocket technology via Action Cable, and share posts with likes and comments functionality.

## Features

- Real-time chat functionality powered by Action Cable and Redis
- User authentication and friend management
- Post creation, liking, and commenting
- Simple and intuitive user interface

## Getting Started
To get a local copy up and running follow these simple example steps

## Prerequisites
To get this project up and running locally, you must already have ruby and necessary gems installed on your computer
- Ruby (3.0.4)
- Rails (6.1.7)
- PostgresSQL
- GIT & GITHUB
- Any Code Editor (VS Code, Brackets, etc)
- Redis server
- imagemagick

To set up and run the application locally using Docker, follow these steps:

### 1. Installation

Clone the project using the following bash command in an appropriate location:

```
https://github.com/Jugalkishor1/dockerize-chatapp.git
```

### 2. Go to the project directory.
	cd dockerize-chatapp

### 3. Build the Docker image with no cache:
	docker-compose build --no-cache

### 4. Database setup
	docker-compose run --rm app bundle exec rake db:create db:migrate db:seed

### 5. Start the Docker containers/application:
	docker-compose up

Access the application in your web browser at http://localhost:3000.

### 6. When you're finished, stop the Docker containers:
    docker-compose down


Contributing

Contributions are welcome! If you'd like to contribute to MyChatApp, please fork the repository, make your changes, and submit a pull request. For major changes, please open an issue first to discuss what you would like to change.
License

This project is licensed under the MIT License.
