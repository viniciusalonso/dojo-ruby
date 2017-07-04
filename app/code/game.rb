require_relative './response'
require_relative './fizz_case'
require_relative './buzz_case'

class Game
  def initialize interval
    @interval = interval
    @response = Response.new(FizzCase.new, BuzzCase.new)
  end

  def play
    @interval.each do |number|
      puts @response.formatted number
    end
  end
end