def FindCodon(a,b)
  seq = b.upcase.chars.reject{|w|w != ?G and w != ?A and w != ?U and w != ?C }.join
  return "Please enter a nucleotide sequence of mRNA" unless seq.class == String
  aminobase = %w(Ala Arg Asn Asp Cys Glu Gln Gly His Ile Leu Lys Met Phe Pro Ser Thr Trp Tyr Val Stop)
  amino = a.capitalize
  return "Enter amino acronym i.e. Ala, Gln, His" if aminobase.include?(amino) == false
  true_seq = (seq.size).div(3) #This generates the integer number.
  seq_2 = (seq.chars).shift(true_seq * 3) #This generates a sequence of nucleotides diviable by three
  tk = []
  case amino
    when "Ala"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "GCU" and q != "GCA" and  q != "GCG" and q != "GCC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Alanine"
    else
       final_2
    end
   when "Arg"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "CGU" and q != "CGC" and  q != "CGA" and q != "CGG" and q != "AGA" and q != "AGG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Arginine"
    else
      final_2
    end
    when "Asn"
      while seq_2.count > 0
        tk << seq_2.shift(3)
        break if seq_2.empty? == true
      end
      final_2 = tk.each.map{|r|r.join}.reject{|q|q != "AAU" and q != "AAC"}
      if final_2.empty? == true
        puts "There are no codons in the sequence that codes for Asparagine"
      else
        final_2
      end
    when "Asp"
      while seq_2.count > 0
        tk << seq_2.shift(3)
        break if seq_2.empty? == true
      end
      final_2 = tk.each.map{|r|r.join}.reject{|q|q != "GAU" and q != "GAC"}
      if final_2.empty? == true
        puts "There are no codons in the sequence that codes for Aspartic acid"
      else
        final_2
      end
  when "Cys"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "UGU" and q != "UGC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Cysteine"
    else
      final_2
    end
  when "Glu"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "GAA" and q != "GAG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Glutamic acid"
    else
      final_2
    end
  when "Gln"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "CAA" and q != "CAG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Glutamine"
    else
      final_2
    end
  when "Gly"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "GGU" and q != "GGA" and q != "GGG" and q != "GGC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Glycine"
    else
      final_2
    end
  when "His"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "CAU" and q != "CAC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Histidine"
    else
      final_2
    end
  when "Ile"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "AUU" and q != "AUA" and q != "AUC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Isoleucine"
    else
      final_2
    end
  when "Leu"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "UUA" and q != "UUG" and q != "CUU" and q != "CUC" and q != "CUA" and q != "CUG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Leucine"
    else
      final_2
    end
  when "Lys"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "AAA" and q != "AAG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Lysine"
    else
      final_2
    end
  when "Met"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "AUG"}
    if final_2.empty? == true
      puts "There is no codon in the sequence that codes for Methionine"
    else
      final_2
    end
  when "Phe"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "UUU" and q != "UUC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Phenylalanine"
    else
      final_2
    end
  when "Pro"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "CCU" and q != "CCC" and q != "CCA" and q != "CCG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Proline"
    else
      final_2
    end
  when "Ser"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "UCU" and q != "UCC" and q != "UCA" and q != "UCG" and q != "AGU" and q != "AGC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Serine"
    else
      final_2
    end
  when "Thr"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "ACU" and q != "ACC" and q != "ACA" and q != "ACG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Threonine"
    else
      final_2
    end
  when "Trp"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "UGG"}
    if final_2.empty? == true
      puts "There is no codon in the sequence that codes for Tryptophan"
    else
      final_2
    end
  when "Tyr"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "UAU" and q != "UAC"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Tyrosine"
    else
      final_2
    end
  when "Val"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "GUU" and q != "GUC" and q != "GUA" and q != "GUG"}
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Valine"
    else
      final_2
    end
  when "Stop"
    while seq_2.count > 0
      tk << seq_2.shift(3)
      break if seq_2.empty? == true
    end
    final_2 = tk.each.map{|r|r.join}.reject{|q|q != "UGA" and q != "UUA" and q != "UAG" }
    if final_2.empty? == true
      puts "There are no codons in the sequence that codes for Stop"
    else
      final_2
    end
  else
    puts "Amino entered out of scope"
  end

rescue NoMethodError
  puts "First parameter is name of amino acid, second is a mRNA of nucleotide"

end