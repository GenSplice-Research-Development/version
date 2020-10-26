def Tribond(b)
  seq = b.upcase.chars.reject{|w|w != "G" and w != "C"}
  return "No triple hydrogen bonds" if seq.empty? == true
  if seq.count == 1
    puts seq.count.to_s + " triple hydrogen bond"
  else
    puts seq.count.to_s + " triple hydrogen bonds"
  end
rescue NoMethodError
  puts "No triple hydrogen bonds"
end