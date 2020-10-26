def SoduimBisulfite(b,(*c))
  seq = b.upcase.chars.reject{|e|e != ?C and e != ?T and e != ?G and e != ?A}
  posti = *c.uniq
  quik = posti.count.times.map{|q|seq[(posti[q])-1]}
  return "Length is too bigger than the sequence of DNA" if seq.size < posti.count
  return "Only contains integers" if posti.all?(Integer) == false
  return "Select only cytosine bases" if quik.uniq.count > 1
  te = posti.each.map{|e|e-1}
  posti.count.times.map{|e|seq[te[e]] = "x"}
  seq.map{|w|w == "C" ? "U" : w }.map{|p|p == "x" ? "C" : p}.join
end