FROM ruby:3.3.0

WORKDIR /rails-app

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install rails

COPY Gemfile /rails-app/Gemfile
COPY Gemfile.lock /rails-app/Gemfile.lock

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]