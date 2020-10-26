def NaOH(a)
  seq = a.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?T and f != ?C}.join
  return "error" if seq.empty? == true
  base = {:C => ?G, :G => ?C, :A => ?T,:T => ?A}

  comp = seq.chars.map{|q|base[(seq[q]).to_sym]}.join
  puts "5'-"+ seq + "-3'"
  puts " "
  puts "3'-" + comp + "-5'"
rescue NoMethodError
  puts "Error"
end