def stock_picker(stock_prices)
  # Create empty array
  profits = Hash.new {|hash, key| hash[key] = Hash.new(0)}

  highest_profit_days = [0,0]
  highest_profit = 0
  
  # Loop through prices of each day
  stock_prices.each_with_index do |price, index|
    profit = 0
    # Loops through prices of remaining days
    stock_prices[index + 1..-1].each do |following_price|
      if following_price - price > profit
        profit = following_price - price
        profits[index] = [[price, following_price, profit], [index, stock_prices.index(following_price)]]
      end
    end
    if profits[index][0][2] > highest_profit 
      highest_profit = profits[index][0][2]
      highest_profit_days = profits[index][1]
    end
  end
  puts highest_profit_days
end

stock_picker([17,3,6,9,15,8,6,1,10])