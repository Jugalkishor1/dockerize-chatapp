# get ruby image from docker hub
FROM ruby:3.0.4

RUN apt-get update -qq && \
    apt-get install -y nodejs yarn && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Update
RUN apt-get update -y

# Install Yarn
RUN apt-get install yarn -y

# Install bundler
RUN gem install bundler:2.2.22

# create directory where we will keep our code.
RUN mkdir /app

#Change directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile* ./

# Run bundle install only after copying gemfile
RUN ["bundle", "install"]

# Copy package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install Yarn dependencies
RUN yarn install

# Copy whole code
COPY . .

# remove server.pid after
RUN ["rm","-f","tmp/pids/server.pid"]

# Define port 
EXPOSE 3000

# Run Server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
