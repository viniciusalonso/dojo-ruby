require_relative './fizz_case'
require_relative './buzz_case'

class Response
  def initialize fizz_case, buzz_case
    @fizz_case, @buzz_case = fizz_case, buzz_case
  end

  def formatted number
    fizz = @fizz_case.fizz(number)
    buzz = @buzz_case.buzz(number)

    response = ''

    response << fizz << buzz

    response.empty? ? number.to_s : response
  end
end