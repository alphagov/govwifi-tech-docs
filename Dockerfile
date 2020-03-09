FROM governmentpaas/cf-cli

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .ruby-version ./

RUN apk --update add g++ musl-dev make git nodejs nodejs-npm
RUN bundle install
COPY . .

EXPOSE 4567

# LiveReload
EXPOSE 35729

RUN npm install --unsafe-perm
RUN bundle exec middleman build
