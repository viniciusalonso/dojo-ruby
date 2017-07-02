require_relative '../code/buzz_case'

describe BuzzCase do
  describe "#buzz" do
    subject { described_class.new }

    it 'indivisible by 5 should return empty string' do
      expect(subject.buzz(1)).to eq ''
    end

    it 'divisible by 5 should return Buzz word' do
      expect(subject.buzz(5)).to eq "Buzz"
    end
  end

end