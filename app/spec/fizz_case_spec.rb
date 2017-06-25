require_relative '../code/fizz_case'

describe FizzCase do

  describe "#is_fizz" do
    it 'indivisible by 3 should not be fizz' do
      _case = described_class.new 1
      expect(_case.is_fizz).to be false
    end

    it 'divisible by 3 should be fizz' do
      _case = described_class.new 3
      expect(_case.is_fizz).to be true
    end
  end

end