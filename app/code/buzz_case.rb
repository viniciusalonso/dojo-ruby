class BuzzCase
  def initialize number
  	@number = number
  end

  def buzz
    buzz? ? 'Buzz' : @number
  end

  private
  def buzz?
    @number % 5 == 0
  end
end