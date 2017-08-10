From ruby:2.4.1-jessie

RUN mkdir /usr/src/paijo-ws
COPY . /usr/src/paijo-ws

WORKDIR /usr/src/paijo-ws

RUN bundle install

CMD ["bundle", "exec", "ruby", "app.rb"]
