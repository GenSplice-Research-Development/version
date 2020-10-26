def NucleotidePercentage(a,b = "ss")
  seq = a.upcase.chars.reject{|x|x!= ?A and x != ?G and x != ?T and x != ?C and x !=?U}
  strand = b
  return "sequence cannot have both T and U nucleotide" if seq.include?(?U) == true and seq.include?(?T) == true
  base = {:G=>?C, :T=>?A, :C=>?G,:A=>?T}
  base_2 = {:G=>?C, :U=>?A,:A=>?U,:C=>?G}
  case strand
  when "ss"
    p=[]
      k = seq.tally.keys
      v = seq.tally.values
      v_2 = v.each.map{|w|(w/(v.inject(:+)).to_f * 100).round(2).to_s + "%"}
    p << k << v_2
    p.transpose.to_h
    when "ds"
      if seq.include?(?U) == true
        p = []
        seq_2=seq.count.times.map{|d|base_2[(seq[d]).to_sym]}
        seq
        k = seq_2 + seq
        k_1 = k.tally.keys
        k_2 = k.tally.values
        k_3 = k_2.each.map{|f|(f/(k_2.inject(:+)).to_f * 100).round(2).to_s + "%"}
        p << k_1 << k_3
        p.transpose.to_h
      else
          p = []
          seq_2=seq.count.times.map{|d|base[(seq[d]).to_sym]}
          seq
          k = seq_2 + seq
          k_1 = k.tally.keys
          k_2 = k.tally.values
          k_3 = k_2.each.map{|f|(f/(k_2.inject(:+)).to_f * 100).round(2).to_s + "%"}
          p << k_1 << k_3
          p.transpose.to_h
      end
    else
      puts "Argument Error"
  end
end