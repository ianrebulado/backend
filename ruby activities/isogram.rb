def is_isogram(word)
  word = word.downcase
  uniq_chars = Set.new

  word.each_char do |char|
    if uniq_chars.include?(char)
      puts false
      return
    else
      uniq_chars.add(char)
    end
  end
  
  puts true
end
