def stock_picker(days)
  best_value=0
  best_b_day=0
  best_s_day=0
  p days
  counter=0
  days.each_with_index do |buy,buy_index|
    days[buy_index..-1].each_with_index do |sell,sell_index|
      if sell-buy>best_value
        best_b_day=buy_index
        best_s_day=sell_index+counter
        best_value=sell-buy
      end
    end
    counter+=1
  end
  if best_b_day==0 and best_s_day==0
    puts "There is no way to make profit!"
  else
    p [best_b_day,best_s_day]
  end
end

days=[1,22,5,44,1,10]
stock_picker(days)
