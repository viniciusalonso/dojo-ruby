require_relative '../code/buzz_case'

describe BuzzCase do
  describe "#buzz" do
    it 'indivisible by 5 should return the inputted number' do
      _case = described_class.new 1
      expect(_case.buzz).to eq 1
    end

    it 'divisible by 3 should return Buzz word' do
      _case = described_class.new 5
      expect(_case.buzz).to eq "Buzz"
    end
  end

end