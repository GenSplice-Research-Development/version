def TripleCodonCount(a)
  seq = a.upcase.chars.reject{|w|w !="A" and w != "T" and w != "G" and w != "C" and w != "U"}.join
  return "T and U are not supposed to be in same strand" if seq.chars.member?(?T) and seq.chars.member?(?U)
  return "Argument error" unless seq.class == String
  seq.length/3
rescue NoMethodError
  puts "Please enter only DNA or RNA nucleotides letters i.e. G T C A U"
end