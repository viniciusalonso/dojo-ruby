class FizzCase
  def initialize number
  	@number = number
  end

  def is_fizz
    @number % 3 == 0
  end
end