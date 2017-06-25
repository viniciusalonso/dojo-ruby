require_relative '../code/response'

describe Response do
  describe '#formatted' do

    it 'number not is divisible by 3 and 5' do
      fizz_case = instance_double('FizzCase')
      allow(fizz_case).to receive(:fizz).with(1).and_return('')

      buzz_case = instance_double('BuzzCase')
      allow(buzz_case).to receive(:buzz).with(1).and_return('')

      response = described_class.new fizz_case, buzz_case
      output   = response.formatted 1
      expect(output).to eq '1'
    end

    it 'number is divisible only by 3' do
      fizz_case = instance_double('FizzCase')
      allow(fizz_case).to receive(:fizz).with(3).and_return('Fizz')

      buzz_case = instance_double('BuzzCase')
      allow(buzz_case).to receive(:buzz).with(3).and_return('')

      response = described_class.new fizz_case, buzz_case
      output   = response.formatted 3
      expect(output).to eq('Fizz')
    end

    it 'number is divisible only by 5' do
      fizz_case = instance_double('FizzCase')
      allow(fizz_case).to receive(:fizz).with(5).and_return('')

      buzz_case = instance_double('BuzzCase')
      allow(buzz_case).to receive(:buzz).with(5).and_return('Buzz')

      response = described_class.new fizz_case, buzz_case
      output   = response.formatted 5
      expect(output).to eq('Buzz')
    end

    it 'number is divisible by both' do
      fizz_case = instance_double('FizzCase')
      allow(fizz_case).to receive(:fizz).with(15).and_return('Fizz')

      buzz_case = instance_double('BuzzCase')
      allow(buzz_case).to receive(:buzz).with(15).and_return('Buzz')

      response = described_class.new fizz_case, buzz_case
      output   = response.formatted 15
      expect(output).to eq('FizzBuzz')
    end
  end
end