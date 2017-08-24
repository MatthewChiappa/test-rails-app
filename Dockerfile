FROM rails:latest

RUN mkdir /rails_app
WORKDIR /rails_app
COPY . /rails_app

RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
