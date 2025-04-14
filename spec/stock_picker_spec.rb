require 'spec_helper'
require_relative '../lib/stock_picker'

RSpec.describe 'Stock Picker' do
  describe 'it should return a pair of stock_prices representing the best day to buy and the best day to sell'

  context 'when the highest day is the first day.' do
    stock_prices = [17,3,6,9,15,8,6,1,10]
    it 'return an array containing two integer, the index of the best day to buy and to sell' do
      expected_output = [1,4]
      expect(stock_picker(stock_prices)).to eq(expected_output)
    end
  end

  context 'when the lowest day is the last day.' do
    stock_prices = [17,3,6,9,15,8,6,10,1]
    it 'return an array containing two integer, the index of the best day to buy and to sell' do
      expected_output = [1,4]
      expect(stock_picker(stock_prices)).to eq(expected_output)
    end
  end
end