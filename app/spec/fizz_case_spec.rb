require_relative '../code/fizz_case'

describe FizzCase do
  describe "#fizz" do
    subject { described_class.new }

    it 'indivisible by 5 should return empty string' do
      expect(subject.fizz(1)).to eq ''
    end

    it 'divisible by 3 should return Fizz word' do
      expect(subject.fizz(3)).to eq "Fizz"
    end
  end
end