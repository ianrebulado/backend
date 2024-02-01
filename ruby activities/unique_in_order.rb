def unique_in_order(seq)
    order = []
  if seq.is_a?(String)
    seq.each_char do |char|
      order << char unless order.last == char 
    #   order[-1] ??
    end
  else
    seq.each_with_index do |item, index|
      order << item unless index > 0 && seq[index - 1] == item
    end
  end
    order
end
  
# TEST
# unique_in_order('AAABBBBBCCCdDEEACAAD')