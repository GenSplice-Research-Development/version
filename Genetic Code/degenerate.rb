def Degenerate(*b)
  codon = *b         #Pool for nesting 2,3,4 64 codons
  allcodon = {:UUU => 'Phe', :UUC => 'Phe', :UUA => 'Leu', :UUG => 'Leu', :UCU =>'Ser',:UCC => 'Ser',
              :UCA => 'Ser', :UCG => 'Ser', :UAU => 'Try', :UAC => 'Try', :UAA =>'Stop', :UAG => 'Stop',
              :UGU => 'Cys', :UGC => 'Cys', :UGA => 'Stop', :UGG => 'Trp', :CUU => 'Lue',:CUA => 'Lue', :CUG => 'Lue',
              :CUC => 'Lue', :CCU => 'Pro',:CCA => 'Pro', :CCG => 'Pro', :CCC =>'Pro',:CAU => 'His',:CAG => 'Gln',
              :CAC => 'His', :CAA => 'Gln', :CGU =>'Arg',:CGA=>'Arg',:CGG=>'Arg',:CGC=>'Arg',:AUA=>'IIe',:AUG=>'Met',
              :AUC=>'IIe',:AUU => 'IIe', :ACU => 'Thr', :ACA => 'Thr', :ACG => 'Thr', :ACC =>'Thr',:AAU=>'Asn',
              :AAA=>'Lys',:AAG=>'Lys',:AAC=>'Asn',:AGU=> 'Ser',:AGG=>'Arg', :AGC => 'Ser', :AGA => 'Arg',
              :GUC=>"Val", :GUA => 'Val', :GUG=>'Val', :GUU=> 'Val',:GCU=>'Ala',:GCC=>'Ala',:GCA=>'Ala',
              :GCG=>'Ala',:GAU => 'Asp', :GAG=>'Glu',:GAA=>'Glu', :GAC => 'Asp',:GGU => 'Gly', :GGA=> 'Gly',
              :GGG=> 'Gly', :GGC=>'Gly'}
  return "More than one codon are required" if codon.size == 1

  case codon.length
  when 2
    final = codon.size.times.map{|r|allcodon[(codon[r]).to_sym]}.uniq
    if final.length == 1
      puts "True" + " #{final[0]}"
    else
      puts "False"
    end
  when 3
    final = codon.length.times.map{|r|allcodon[(codon[r]).to_sym]}.uniq
    if final.length == 1
      puts "True" + " #{final[0]}"
    else
      puts "False"
    end
  when 4
    final = codon.length.times.map{|r|allcodon[(codon[r]).to_sym]}.uniq
    if final.length == 1
      puts "True" + " #{final[0]}"
    else
      puts "False"
    end
  when 5
    final = codon.length.times.map{|r|allcodon[(codon[r]).to_sym]}.uniq
    if final.length == 1
      puts "True" + " #{final[0]}"
    else
      puts "False"
    end
  when 6
    final = codon.length.times.map{|r|allcodon[(codon[r]).to_sym]}.uniq
    if final.length == 1
      puts "True" + " #{final[0]}"
    else
      puts "False"
    end
  else
    puts "The range is two to six codons"
  end
rescue NoMethodError
  puts "One of the codons is not really a codon"

end