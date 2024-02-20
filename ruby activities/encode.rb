def encode(word)
  word.tr('aeiou', '12345')
end

def decode(word)
  word.tr('12345', 'aeiou')
end