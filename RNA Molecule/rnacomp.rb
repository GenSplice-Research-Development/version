def RNAComplementary(a)
  seq = a.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?U and f != ?C}.join
  return "error" if seq.empty? == true
  base = {:C => ?G, :G => ?C, :A => ?U,:U => ?A}

  comp = seq.chars.map{|q|base[(seq[q]).to_sym]}.join
  puts "5'-"+ seq + "-3'"
  puts "3'-" + comp + "-5'"
rescue NoMethodError
  puts "Error"

end