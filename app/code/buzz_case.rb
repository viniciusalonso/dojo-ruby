class BuzzCase
  def buzz number
    buzz?(number) ? 'Buzz' : ''
  end

  private
  def buzz? number
    number % 5 == 0
  end
end