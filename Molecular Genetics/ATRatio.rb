def ATRatio(a,b="ss")

  seq = a.upcase.chars.reject{|w|w !="A" and w != "T" and w != "G" and w != "C" }
  nature = b
  return "Enter only 'ss' or 'ds' on second parameter" unless nature == "ss" or nature == "ds"
  base = {:C => "G", :G => "C", :A => "T", :T => "A"}

  case nature
  when "ss"
    seq_2 = seq.reject{|x|x != ?A and x != ?T}.tally.values.inject(:+).to_f
    seq_3 = seq.tally.values.inject(:+).to_f
    puts  ((seq_2 / seq_3) * 100.0).round(1).to_s + "%"
  when "ds"
    seq_3 = seq.count.times.map{|w|base[seq[w].to_sym]}
    seq_4 =  (seq + seq_3).reject{|x|x != ?T and x != ?A}.tally.values.inject(:+).to_f
    seq_5 = (seq + seq_3).tally.values.inject(:+).to_f
    puts  ((seq_4/seq_5) * 100.0).round(1).to_s + "%"
  end
rescue NoMethodError
  puts "Argument error"

end