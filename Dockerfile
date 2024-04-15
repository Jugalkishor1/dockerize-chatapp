# get ruby image from docker hub
FROM ruby:3.0.4

RUN apt-get update -qq && \
    apt-get install -y nodejs yarn && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -y

# Install Yarn and bundler
RUN apt-get install yarn -y && gem install bundler:2.5.5

# create directory where we will keep our code.
RUN mkdir /app

#Change directory
WORKDIR /app

# Copy Gemfile, package.json and yarn.lock files
COPY Gemfile* package.json yarn.lock ./

# Install necessary gems and dependencies
RUN bundle install && yarn install

# Copy whole code
COPY . .

# remove server.pid after
RUN ["rm","-f","tmp/pids/server.pid"]

# Define port 
EXPOSE 3000

# Run Server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
