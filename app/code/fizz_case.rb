class FizzCase
  def fizz number
    fizz?(number) ? "Fizz" : ''
  end

  private
  def fizz? number
    number % 3 == 0
  end
end