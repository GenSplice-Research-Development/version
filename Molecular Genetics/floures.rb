def floures(a, b="ss")
  seq = a.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?T and f != ?C}.join #filter for seq to avoid other letters
  base = {:C => ?B, :G => ?Y,:A => ?G,:T => ?R} #base colors used in flourescence labelling
  strand = b
  return "only ss or cs is allowed" unless strand == "ss" or strand == "cs"

  if strand == "ss"
  comp = seq.upcase.chars.map{|q|base[(seq[q]).to_sym]}.join
  elsif strand.downcase == "cs"
    base_2 = {:C => ?G, :G => ?C,:A => ?T,:T => ?A}
    colors = {:C => ?B, :G => ?Y,:A => ?G,:T => ?R}
    comp = seq.upcase.chars.map{|q|base_2[(seq[q]).to_sym]}.join
    comp_2 = comp.upcase.chars.map{|q|colors[(comp[q]).to_sym]}.join
  else
    puts "Argument error"
  end
rescue NoMethodError
  puts "Argument error"
end