FROM ruby:2.3.0

RUN apt-get update
RUN apt-get install nodejs
RUN apt-get install rails

RUN mkdir - p /opt/app

ONBUILD COPY Gemfile /opt/app
ONBUILD COPY Gemfile.lock opt/app

ONBUILD RUN bundle install
ONBUILD RUN rake db:setup
ONBUILD RUN rake db:seed

WORKDIR /opt/app

#Pour mon Dockerfile :
# docker build -t "ft-rails:on-build" path
# docker run ft-rails:on-build

#Pour le Dockerfile de 42 :
# docker build --tag ft-rails:on-build -f dockerfile-ft path
# docker run -p 3000:3000 --rm
