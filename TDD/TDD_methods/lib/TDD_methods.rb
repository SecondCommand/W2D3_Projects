def my_uniq(arr)
  count_hash = Hash.new(0)

  arr.each {|el| count_hash[el] += 1 }

  count_hash.keys

end

class Array

  def two_sum
    result = []
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        next if idx1 >= idx2
        result << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    result
  end


end

def my_transpose(array)
  result = []
  array.each do |row|
    result << row.dup
  end

  array.each_with_index do |row, row_idx|
    row.each_with_index do |col, col_idx|
      result[col_idx][row_idx] = array[row_idx][col_idx]
    end
  end

  result
end

def stock_picker(prices)
  buy_sell = nil
  max_profit = 0
  prices.each_with_index do |buy_price, day1|
    prices.each_with_index do |sell_price, day2|
      next if day1 >= day2
      buy_sell = [day1, day2] if sell_price - buy_price > max_profit
    end
  end
  buy_sell
end







#
