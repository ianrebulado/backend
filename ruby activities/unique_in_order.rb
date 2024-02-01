def unique_in_order(seq)
    order = []
    seq.each_char do |char|
      order << char unless order.last == char 
    #   order[-1] ??
    end
    order
end
  
# TEST
# unique_in_order('AAABBBBBCCCdDEEACAAD')