FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /product-register2
COPY Gemfile Gemfile.lock /product-register2/
RUN bundle install
