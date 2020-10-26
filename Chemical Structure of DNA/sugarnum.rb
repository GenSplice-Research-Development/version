def sugarnum(b)
  seq = b.upcase.chars.reject{|s|s != ?C and s != ?A and s != ?T and s != ?G}
  return "No sugar found" if seq.empty? == true
  puts String((seq.count)).rjust(4)


rescue NoMethodError
  puts "No phosphate formed"



end