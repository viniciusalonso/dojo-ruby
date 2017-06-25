require_relative '../code/game'

describe Game do
  describe '#play' do
    it 'show a single Fizz' do
      game = described_class.new (1..3)
      expect(STDOUT).to receive(:puts).with('1')
      expect(STDOUT).to receive(:puts).with('2')
      expect(STDOUT).to receive(:puts).with('Fizz')

      game.play
    end

    it 'show Fizz and Buzz one time each' do
      game = described_class.new (1..5)

      expect(STDOUT).to receive(:puts).with('1')
      expect(STDOUT).to receive(:puts).with('2')
      expect(STDOUT).to receive(:puts).with('Fizz')
      expect(STDOUT).to receive(:puts).with('4')
      expect(STDOUT).to receive(:puts).with('Buzz')

      game.play
    end

    it 'show FizzBuzz' do
      game = described_class.new (1..15)

      expect(STDOUT).to receive(:puts).with('1')
      expect(STDOUT).to receive(:puts).with('2')
      expect(STDOUT).to receive(:puts).with('Fizz')
      expect(STDOUT).to receive(:puts).with('4')
      expect(STDOUT).to receive(:puts).with('Buzz')
      expect(STDOUT).to receive(:puts).with('Fizz')
      expect(STDOUT).to receive(:puts).with('7')
      expect(STDOUT).to receive(:puts).with('8')
      expect(STDOUT).to receive(:puts).with('Fizz')
      expect(STDOUT).to receive(:puts).with('Buzz')
      expect(STDOUT).to receive(:puts).with('11')
      expect(STDOUT).to receive(:puts).with('Fizz')
      expect(STDOUT).to receive(:puts).with('13')
      expect(STDOUT).to receive(:puts).with('14')
      expect(STDOUT).to receive(:puts).with('FizzBuzz')

      game.play
    end
  end
end