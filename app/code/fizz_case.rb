class FizzCase
  def initialize number
  	@number = number
  end

  def fizz
    fizz? ? "Fizz" : @number
  end

  private
  def fizz?
    @number % 3 == 0
  end
end