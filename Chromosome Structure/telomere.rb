#Lagging strand during replication
def Telomere(a,b)
  dna_seq = a.upcase.chars.reject{|w|w !="C" and w != "T" and w != "A" and w != "G"}    #Sequence of DNA in strings
   rep = b              #Number of repeats generates for unpaired nucleotides
  # T and A nucleotides are found to be 1 to 4
  # While G nucleotides could be 2 or more
  telo = (%w[T A] * 10).sample(rand 1..4) + (%w[G] * 20).sample(rand 2..9)
  telom = telo.cycle(rep).map{|e|e}
  nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G'}
  final = (dna_seq + telom).each.map{|h| h.to_sym}
  comp = final.each.map{|n| nucleotides[n]}.join
  puts "5'-" + (dna_seq + telom).join + "-3'"
  puts "3'-" + comp + "-5'"



  end