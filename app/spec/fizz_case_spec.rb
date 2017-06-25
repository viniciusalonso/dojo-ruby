require_relative '../code/fizz_case'

describe FizzCase do
  describe "#fizz" do
    it 'indivisible by 3 should return the inputted number' do
      _case = described_class.new 1
      expect(_case.fizz).to eq 1
    end

    it 'divisible by 3 should return Fizz word' do
      _case = described_class.new 3
      expect(_case.fizz).to eq "Fizz"
    end
  end
end