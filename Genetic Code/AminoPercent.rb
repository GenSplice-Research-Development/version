def AminoPercent(*c)
  seq = *c.map{|w|w.capitalize}.reject{|e|e != ?A and e != ?R and e != ?N and e != ?D and e != ?C and e != ?E and e != ?Q and
      e != ?G and e != ?H and e != ?I and e != ?L and e != ?K and e != ?M and e != ?F and e != ?P and e != ?S and e != ?T and
      e != ?W and e != ?Y and e != ?V and e != "Met" and e != "Phe" and e != "Leu" and e != "Ser" and
      e != "Try" and e != "Cys" and e != "Trp" and e != "Pro" and e != "His" and e != "Gln" and
      e != "Arg" and e != "Ile" and e != "Thr" and e != "Asn" and e != "Val" and e != "Ala" and
      e != "Glu" and e != "Gly" and e != "Asp" and e != "Lys"}
  aminobase = {:A => "Ala", :R => "Arg", :N => "Asn", :D => "Asp", :C => "Cys", :E => "Glu", :Q => "Gln",:G => "Gly",
               :H => "His", :I => "Ile", :L => "Leu", :K => "Lys", :M => "Met", :F => "Phe", :P => "Pro", :S => "Ser",
               :T => "Thr", :W => "Trp", :Y => "Tyr", :V => "Val"}
  seq_2 = seq.map{|e|e.length == 1 ? aminobase[e.to_sym] : e}
  p = []
  seq_3 = seq_2.tally.keys
  seq_4 = seq_2.tally.values
  v_2 = seq_4.each.map{|w|(w/(seq_4.inject(:+)).to_f * 100).round(2).to_s + "%"}
  p << seq_3 << v_2
  p.transpose.to_h
rescue NoMethodError
  puts "Argument Error"
end