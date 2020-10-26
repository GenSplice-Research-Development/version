def NonAromaticAmino(*b)
  seq = *b.map{|w|w.capitalize}.reject{|e|e != ?A and e != ?R and e != ?N and e != ?D and e != ?C and e != ?E and e != ?Q and
      e != ?G and e != ?H and e != ?I and e != ?L and e != ?K and e != ?M and e != ?F and e != ?P and e != ?S and e != ?T and
      e != ?W and e != ?Y and e != ?V and e != "Met" and e != "Phe" and e != "Leu" and e != "Ser" and
      e != "Try" and e != "Cys" and e != "Trp" and e != "Pro" and e != "His" and e != "Gln" and
      e != "Arg" and e != "Ile" and e != "Thr" and e != "Asn" and e != "Val" and e != "Ala" and
      e != "Glu" and e != "Gly" and e != "Asp" and e != "Lys"}
  nonpolar = %w(Ala Val Ile Leu Gly Ser Thr Asn Gln Glu Arg Asp Lys A V I L G S T N Q E R D K)
  seq.each.select.map{|g|nonpolar.include?(g) == true ? g + "=true" : g + "=false"}
rescue NoMethodError
  puts "Only recognised amino acids symbols are required"
end