# Chatting app

## Description

Chatting app is a simple chat application built in first 2 months of my training period in ruby on rails as a fresher. It allows users to make friends, communicate with them in real-time using WebSocket technology via Action Cable, and share posts with likes and comments functionality.

Note: I recently had the opportunity to work on a Dockerized live project, which trigger my interest in learning Docker. This led me to experiment with Dockerizing my first demo project that is 'Chatapp'. Currently, I am focusing on refining the Docker setup to enhance its efficiency and scalability with docker best pratices and make it production ready.
Additionally, my next steps involve familiarizing myself with CI/CD pipelines and integrating them into this project."

Also, this is my career's first project, so please don't focus too much on the front-end part.

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
git clone https://github.com/Jugalkishor1/dockerize-chatapp.git
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

Additionally, run below command if you encounter this mentioned error or if 'node_modules' are missing.\
### 7. Install dependencies with yarn.
	docker-compose run app yarn install

```
	Webpacker can't find application in C:/Users/[...]/site_test/public/packs/manifest.json. Possible causes:
	1. You want to set webpacker.yml value of compile to true for your environment
	   unless you are using the `webpack -w` or the webpack-dev-server.
	2. webpack has not yet re-run to reflect updates.
	3. You have misconfigured Webpacker's config/webpacker.yml file.
	4. Your webpack configuration is not creating a manifest.
	Your manifest contains:
	{
	}
```
Contributing

Contributions are welcome! If you'd like to contribute to Chatting app, please fork the repository, make your changes, and submit a pull request. For major changes, please open an issue first to discuss what you would like to change.
