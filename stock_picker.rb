print "enter stock array : "
stocks = gets.chomp

def stock_picker(stocks)
  stocks = stocks.split(" ")
  length = stocks.length
  length.times do |k|
    stocks[k] = stocks[k].to_i
  end
  maxprofit = stocks[1] - stocks[0]
  result = [0,1]
  length.times do |i|
    (length - i - 1).times do |j|
      if (maxprofit < stocks[i + j + 1] - stocks[i])
        result = [i,i+j+1]
        maxprofit = stocks[result[1]] - stocks[result[0]]
      end
    end
  end
  result
end
puts stock_picker(stocks)
