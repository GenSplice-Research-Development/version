def RNANumber(a)
  seq = a.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?U and f != ?C}.join #filter for seq to avoid other letters
  return "Enter letters that represents RNA in string form i.e A, U, C and G" if seq.empty? == true
  seq.chars.each.map{|w|w.ord}
rescue NoMethodError
  puts "Enter letters that represents RNA in string form i.e A, U, C and G"

end