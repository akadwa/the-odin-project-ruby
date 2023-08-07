def stock_picker(stock_prices)
  min_price = stock_prices[0]
  min_price_day = 0

  profit = 0
  days = [0, 0]

  stock_prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_price_day = day
    end

    if price - min_price > profit
      profit = price - min_price
      days = [min_price_day, day]
    end
  end

  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
