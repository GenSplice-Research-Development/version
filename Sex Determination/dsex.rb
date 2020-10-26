#aS THE STRUCTURE OF CHROMOSOMES DIFFERS FROM ACROSS SPECIES, FOR THIS METHOD, WE USED THAT OF MAN, BIRDS AND INSECT LIKE GRASSHOPPER
# THAT IS UNIVERSALLY ACCEPTABLE OR RECOGNISED.
def SexDetermination(a,b)
  genotype = a.upcase
  genotype_2 = b.upcase
  pool_gene = %w(XX XY XO ZW ZZ)
  return "sex chromosomes error" if (pool_gene.include? genotype) == false or (pool_gene.include? genotype_2) == false
  man = %w(XX XY)
  bird = %w(ZZ ZW)
  insect = %w(XX XO)
  if genotype != genotype_2
    if (man.include? genotype) == true and (man.include? genotype_2) == true
      pool = {:XX => "Female XX", :XY => "Male XY"}
      poss = genotype.chars.product(genotype_2.chars)
      puts pool[(poss[0]).sort.join.to_sym]
      puts pool[(poss[1]).sort.join.to_sym]
      puts pool[(poss[2]).sort.join.to_sym]
      puts pool[(poss[3]).sort.join.to_sym]
      elsif (bird.include? genotype) == true and (bird.include? genotype_2) == true
         aves = {:ZZ => "Male ZZ", :ZW => "Female ZW", :WZ => "Female ZW"}
          wing = genotype.chars.product(genotype_2.chars)
        puts aves[(wing[0]).join.to_sym]
        puts aves[(wing[1]).join.to_sym]
        puts aves[(wing[2]).join.to_sym]
        puts aves[(wing[3]).join.to_sym]
    elsif (insect.include? genotype) == true and (insect.include? genotype_2) == true
      insecta = {:XO => "Male XO", :XX => "Female XX", :OX => "Male XO"}
      win = genotype.chars.product(genotype_2.chars)
      puts insecta[(win[0]).join.to_sym]
      puts insecta[(win[1]).join.to_sym]
      puts insecta[(win[2]).sort.join.to_sym]
      puts insecta[(win[3]).sort.join.to_sym]

    end
  elsif genotype == genotype_2
    puts "Not viable"
  else
    puts "Not viable"
  end
end