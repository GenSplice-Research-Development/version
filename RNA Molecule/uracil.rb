def Uracil(a, b = "ss")
  seq = a
  form = b.downcase
  return "use ss or ds" unless form == "ss" or form == "ds"
  if (seq.is_a? String) == true and form.downcase == "ds"
    seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?U}
    base = {:C => ?G, :G => ?C, :U => ?A, :A => ?U}
    seq_2.count(?U) + seq_2.count.times.map{|z|base[(seq_2[z]).to_sym]}.count(?U)
  elsif (seq.is_a? String) == true and form.downcase == "ss"
    seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?U}
    seq_2.count(?U)
  else
    p "Augment error"
  end
end