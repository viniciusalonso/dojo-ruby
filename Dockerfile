FROM ruby
RUN gem i pry
RUN gem i rspec
RUN mkdir app/

WORKDIR app/