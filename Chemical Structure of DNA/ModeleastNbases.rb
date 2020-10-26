def ModeLeastBase(a,b="ss")
  seq = a.upcase.chars.reject{|w|w !="A" and w != "T" and w != "G" and w != "C" and w != "U"}
  nature = b
  return "Uracil and Thymine cannot be present together" if  seq.include?("U") and seq.include?("T") == true
  return "Enter only 'ss' or 'ds' on second parameter" unless nature == "ss" or nature == "ds"
  seq_2 = seq.tally.values.minmax
  base = {:C => "G", :G => "C", :A => "T", :T => "A"}
  seq_min = seq_2[0]
  seq_max = seq_2[1]
  case nature
  when "ss"
    print seq.tally.to_a.select{|e|e[1] == seq_min}.to_h.keys.unshift("Min")
    return seq.tally.to_a.select{|e|e[1] == seq_max}.to_h.keys.unshift("Max")

  when "ds"
    seq_3 = seq.count.times.map{|w|base[seq[w].to_sym]}
    seq_4 =  (seq + seq_3).tally.values.minmax
    seq_min = seq_4[0]
    seq_max = seq_4[1]
    seq_5 = (seq + seq_3)
    print seq_5.tally.to_a.select{|e|e[1] == seq_min}.to_h.keys.unshift("Min")
    return seq_5.tally.to_a.select{|e|e[1] == seq_max}.to_h.keys.unshift("Max")
  else
    puts "Enter only 'ss' or 'ds' on second parameter"
  end
rescue NoMethodError
  puts "Argument error"


end