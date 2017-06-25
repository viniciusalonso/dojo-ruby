class BuzzCase
  def initialize number
  	@number = number
  end

  def is_buzz
    @number % 5 == 0
  end
end