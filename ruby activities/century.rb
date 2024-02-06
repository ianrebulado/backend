def century(year)
  result = year / 100
    if year % 100 == 0
      p result
    else result.to_i + 1
    end
 end

#  century(1705)
#  century(1901)
#  century(1601)
#  century(2000)