def SumEachNbase(a,b="ss")
  seq = a.upcase.chars.reject{|w|w !="A" and w != "T" and w != "G" and w != "C" and w != "U"}
  nature = b
  return "Uracil and Thymine cannot be present together" if  seq.include?("U") and seq.include?("T") == true
  return "Enter only 'nt' or 'bp' on second parameter" unless nature == "ss" or nature == "ds"
    base = {:C => "G", :G => "C", :A => "T", :T => "A"}
  case nature
  when "ss"
    seq.tally
  when "ds"
    seq_3 = seq.count.times.map{|w|base[seq[w].to_sym]}
    seq_4 =  (seq + seq_3).tally
  else
    puts "Enter only 'ss' or 'ds' on second parameter"
  end
rescue NoMethodError
  puts "Argument error"
end