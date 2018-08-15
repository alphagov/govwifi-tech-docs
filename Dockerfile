FROM governmentpaas/cf-cli

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .ruby-version ./

RUN apk --update --upgrade add build-base && \
  apk add curl git nodejs && \
  find / -type f -iname \*.apk-new -delete && \
  bundle check || bundle install && \
  apk del build-base && \
  rm -rf /var/cache/apk/*

COPY . .

RUN ["bundle", "exec", "middleman", "build"]
