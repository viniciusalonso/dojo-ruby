require_relative '../code/response'

describe Response do
  describe '#formatted' do

    subject { described_class.new }

    it 'number not is divisible by 3 and 5' do
      FizzCase.any_instance.should_receive(:fizz).and_return(1)
      BuzzCase.any_instance.should_receive(:buzz).and_return(1)

      output = subject.formatted 1
      expect(output).to eq '1'
    end

    it 'number is divisible only by 3' do
      FizzCase.any_instance.should_receive(:fizz).and_return('Fizz')
      BuzzCase.any_instance.should_receive(:buzz).and_return(3)

      output = subject.formatted 3
      expect(output).to eq('Fizz')
    end

    it 'number is divisible only by 5' do
      FizzCase.any_instance.should_receive(:fizz).and_return(5)
      BuzzCase.any_instance.should_receive(:buzz).and_return('Buzz')

      output = subject.formatted 5
      expect(output).to eq('Buzz')
    end
  end
end