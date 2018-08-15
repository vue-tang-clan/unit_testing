require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# my_calc = Calculator.new
# if my_calc.add(1, 1) == 2
#   puts "Add function passed!"
# else
#   puts "Add function failed!"
# end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      my_calc = Calculator.new
      result = my_calc.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      my_calc = Calculator.new
      result = my_calc.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      my_calc = Calculator.new
      result = my_calc.divide(10, 2)
      expect(result).to eq(5)
    end

    it 'should throw an error if dividing by zero' do
      my_calc = Calculator.new
      expect{ my_calc.divide(10, 0) }.to raise_error(ZeroDivisionError)
    end
  end

  describe '#square' do
    it 'should return the product of a number with itself' do
      my_calc = Calculator.new
      result = my_calc.square(5)
      expect(result).to eq(25)
    end
  end
end
