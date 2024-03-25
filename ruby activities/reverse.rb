def reverse(str)
  res = []
  str.each_char do |char|
    res.unshift(char)
  end
  res.join("")
end