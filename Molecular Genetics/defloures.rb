def Deflouresent(a, b = "ss")
  seq = a.upcase.chars.reject{|f|f != ?Y and f != ?B and f != ?G and f != ?R}.join #filter for seq to avoid other letters
  base = {:B => ?C, :Y => ?G,:G => ?A,:R => ?T} #converts letters representing colors to bases found in DNA
   strand = b.downcase #Local variable equal to zero
  return "only ss or cs is allowed" unless strand == "ss" or strand == "cs"
  if strand == "ss"
    comp = seq.upcase.chars.map{|q|base[(seq[q]).to_sym]}.join
  elsif strand.downcase == "cs"
    base_2 = {:C => ?G, :G => ?C,:A => ?T,:T => ?A}
    colors = {:B => ?C, :Y => ?G,:G => ?A,:R => ?T}
    comp = seq.upcase.chars.map{|q|colors[(seq[q]).to_sym]}.join
    comp_2 = comp.upcase.chars.map{|q|base_2[(comp[q]).to_sym]}.join
  else
    puts "Argument error"
  end
rescue NoMethodError
  puts "Argument error"
end