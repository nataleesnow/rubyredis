FROM ruby:alpine

ENV DIRNAME /app
WORKDIR $DIRNAME
COPY Gemfile $DIRNAME
RUN bundle install
COPY . $DIRNAME
EXPOSE 3000
VOLUME ["/app"]

CMD ["ruby", "hello.rb"]
