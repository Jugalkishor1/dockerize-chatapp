# get ruby image from docker hub
FROM ruby:3.0.4
#Install node

RUN apt-get update && apt-get install -y nodejs
#install bundler

RUN gem install bundler:2.2.22
# create directory where we will keep our code.

RUN mkdir /app
#Change directory

WORKDIR /app
# Copy Gemfile and Gemfile.lock

COPY Gemfile* ./    
# Run bundle install only after copying gemfile

RUN ["bundle", "install"]
# Copy whole code

COPY . .
# remove server.pid after 

RUN ["rm","-f","tmp/pids/server.pid"]
# Define port 

EXPOSE 3000
# Run Server

## CMD can only be one in one gemfile
CMD ["bundle" ,"exec", "rails", "server", "-b", "0.0.0.0"]

# Commands to create and run this image
# $ docker build --no-cache -t rails .
# $ docker run rails

