def Dibond(b)
  seq = b.upcase.chars.reject{|w|w != "A" and w != "T"}
  return "No double hydrogen bonds" if seq.empty? == true
  if seq.count == 1
    puts seq.count.to_s + " double hydrogen bond"
  else
    puts seq.count.to_s + " double hydrogen bonds"
  end
rescue NoMethodError
  puts "No double hydrogen bonds"
end