FROM ruby:2.6.4

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libxml2-dev libxslt-dev vim
RUN apt-get install -y nginx

RUN gem install bundler

RUN mkdir /app
WORKDIR /app
RUN gem install sinatra
RUN gem install sinatra-contrib
RUN gem install puma
RUN gem install rubocop

EXPOSE 80