require_relative '../code/buzz_case'

describe BuzzCase do

  describe "#is_buzz" do
    it 'indivisible by 5 should not be buzz' do
      _case = described_class.new 1
      expect(_case.is_buzz).to be false
    end

    it 'divisible by 3 should be buzz' do
      _case = described_class.new 5
      expect(_case.is_buzz).to be true
    end
  end

end