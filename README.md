# Fizz Buzz Oriented Objects
This game was developed to be presented on meetup of the group Pato Livre. The game rules may be find [here](http://codingdojo.org/kata/FizzBuzz/).

## How to run
You'll need to install, [docker](https://docs.docker.com/engine/installation/) and [docker-compose](https://docs.docker.com/compose/install/), after installed it you should use the commands below:
```
docker-compose build
docker-compose up
```

## Running tests
To tests was used the suite [Rspec](http://rspec.info/).
```
docker-compose run web rspec
```
