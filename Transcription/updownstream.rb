def UpDownRNA(a)
    seq = a.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?U and f != ?C}.join #filter for seq to avoid other letters
  return "error" if seq.class != String
  if Regexp.new("AUG").match(seq).to_s == "AUG"
      str = seq.index("AUG").succ #The position of a start codon
     seq.chars.each_index.map{ |e| (e+1) - str.pred}.map{|e| e < 1 ? e-1 : e}
   else

     puts "Sorry, there is no start codon in your matured RNA."
   end
rescue NoMethodError
  puts "String of RNA bases representing letters are required."
   end