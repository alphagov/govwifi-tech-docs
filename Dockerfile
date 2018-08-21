FROM governmentpaas/cf-cli

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .ruby-version ./

RUN apk --update add g++ musl-dev make git nodejs && bundle install

COPY . .

CMD bundle exec middleman build
