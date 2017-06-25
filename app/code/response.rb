require_relative './fizz_case'
require_relative './buzz_case'

class Response
  def formatted number
    @fizz_case = ::FizzCase.new number
    fizz = @fizz_case.fizz

    @buzz_case = ::BuzzCase.new number
    buzz = @buzz_case.buzz

    response = ''

    if fizz == 'Fizz' then
      response += fizz
    end

    if buzz == 'Buzz'
      response += buzz
    end

    if fizz != 'Fizz' and buzz != 'Buzz' then
      response += number.to_s
    end

    response
  end
end