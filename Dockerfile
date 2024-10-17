FROM ruby:3.3.5-alpine

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .ruby-version ./

RUN apk --update add g++ musl-dev make git nodejs npm
RUN bundle install
COPY . .

EXPOSE 4567

# LiveReload
EXPOSE 35729

# RUN npm install --unsafe-perm
RUN npm install
RUN bundle exec middleman build
