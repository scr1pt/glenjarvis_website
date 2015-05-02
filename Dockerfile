FROM ruby:2.0

# install js and db environment
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

# throw errors if Gemfile has been modified since Gemfile.lock
# use at deployment
# RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# must rebuild image after changing Gemfile
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

# pull in the app
COPY . /usr/src/app

RUN rake db:migrate

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
