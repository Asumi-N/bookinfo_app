FROM ruby:3.1

USER root
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client
RUN mkdir /bookshare
WORKDIR /bookshare
ADD Gemfile /bookshare//Gemfile
ADD Gemfile.lock /bookshare/Gemfile.lock
RUN bundle install
ADD . /bookshare
