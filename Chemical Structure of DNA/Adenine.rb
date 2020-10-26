def Adenine(a, b = "ds")
    seq = a
    form = b.downcase
    if (seq.is_a? String) == true and form.downcase == "ds"
           seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}
           base = {:C => ?G, :G => ?C, :T => ?A, :A => ?T}
          seq_2.count(?A) + seq_2.count.times.map{|z|base[(seq_2[z]).to_sym]}.count(?A)
    elsif (seq.is_a? String) == true and form.downcase == "ss"
      seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}
      seq_2.count(?A)
      else
    p "Enter 'ds' or 'ss' only"
   end
 end