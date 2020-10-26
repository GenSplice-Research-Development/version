def NumberRNA(*b)
  seqarr = *b.reject{|e|e != 85 and e != 71 and e != 65 and e != 67 }
  num = { 67 => "C", 71 => "G" , 85 =>  "U", 65 => "A"}
  return "Please insert a lot of 67, 71, 85, and 65 in your list" if seqarr.empty? == true
  randrom = [1,2].sample(1)
  if randrom == [1]
    puts "5'-" + seqarr.each.map{|q|num[q]}.join + "-3'"
  elsif
  puts "3'-" + seqarr.each.map{|q|num[q]}.join + "-5'"
  end

end