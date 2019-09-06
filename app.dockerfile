FROM ruby:2.6.4-alpine3.10

RUN gem install bundler

RUN mkdir /app
WORKDIR /app
RUN gem install sinatra
RUN gem install sinatra-contrib

EXPOSE 80
CMD ["ruby", "app.rb"]
