require 'rspec'

class CoinMachine
  def give_change(total_value)
    coin_values = [25, 10, 5, 1]
    coins = []
    coin_values.each do |coin_value|
      num_coins = total_value / coin_value
      num_coins.times do
        coins << coin_value
        total_value -= coin_value
      end    
    end
    return coins
  end
end

RSpec.describe CoinMachine do
  describe '#give_change' do
    it 'should return [1] given 1' do
      coin_machine = CoinMachine.new
      result = coin_machine.give_change(1)
      expect(result).to eq([1])
    end

    it 'should return [1, 1] given 2' do
      coin_machine = CoinMachine.new
      result = coin_machine.give_change(2)
      expect(result).to eq([1, 1])
    end

    it 'should return [5] given 5' do
      coin_machine = CoinMachine.new
      result = coin_machine.give_change(5)
      expect(result).to eq([5])
    end

    it 'should return [10] given 10' do
      coin_machine = CoinMachine.new
      result = coin_machine.give_change(10)
      expect(result).to eq([10])
    end

    it 'should return [25] given 25' do
      coin_machine = CoinMachine.new
      result = coin_machine.give_change(25)
      expect(result).to eq([25])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] given 119' do
      coin_machine = CoinMachine.new
      result = coin_machine.give_change(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
