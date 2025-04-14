def stock_picker(stock_prices)
  trade_index = Array.new(2)
  i = 0
  best_profit = 0
  until i >= stock_prices.size
    j = stock_prices.size - 1
    until j < i
      if stock_prices[i] < stock_prices[j]
        profit = stock_prices[j] - stock_prices[i]
        if best_profit < profit
          best_profit = profit
          trade_index = [i, j]
        end
      end
      j -= 1
    end
    i += 1
  end
  trade_index
end