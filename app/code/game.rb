require_relative './response'
require_relative './fizz_case'
require_relative './buzz_case'

class Game
  def initialize interval
  	@interval = interval

    fizz_case = FizzCase.new
    buzz_case = BuzzCase.new
    @response = Response.new fizz_case, buzz_case
  end

  def play
    @interval.each do |number|
      puts @response.formatted number
    end
  end
end