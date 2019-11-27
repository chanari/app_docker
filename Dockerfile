FROM ruby:2.6.3
ENV APP_HOME /application
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs ntp yarn
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
RUN gem install bundler:2.0.1
ADD Gemfile $APP_HOME
ADD Gemfile.lock $APP_HOME
RUN bundle install
ADD . $APP_HOME
ENTRYPOINT ./entrypoint.sh
