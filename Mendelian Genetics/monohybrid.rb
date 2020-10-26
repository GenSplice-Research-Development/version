
def CompleteDominance(a,b)
     seq = a.chars.map{|e|e.to_sym} #Creates an Array and converts each member to a symbol
     seq1= b.chars.map{|e|e.to_sym} #Creates an Array and converts each member to a symbol
     alphau = [*:A..:Z]    #Creates the uppercase letters of the alphabetical
     alphal = [*:a..:z]  #Creates the lowercase letters of the alphabetical
     number1 = 2.step(to: 52, by: 2).take(26) #Creates numbers from 2 to 52 skipped by 2
     number2 = 1.step(to: 52, by: 2).take(26)  #Creates numbers from 1 to 51 skipped by 2
     tank_1 = [alphau,number2].transpose.to_h #Creates an hash containing uppercase letters with numbers
     tank_2 = [alphal,number1].transpose.to_h #Creates an hash containing lowercase letters with numbers

      tankh3 = tank_1.merge(tank_2) #combines uppercase letters with lowercase letters

     seq2 = seq.map{|f|tankh3[f]}.sort
     seq3 = seq1.map{|f|tankh3[f]}.sort

     genotype_1 = seq2.map{|r|tankh3.key(r)}.map{|w|w.to_s}.join
     genotype_2 = seq3.map{|r|tankh3.key(r)}.map{|w|w.to_s}.join

  return 'Please, the limit number of alleles is two on each side' unless (genotype_1 and genotype_2).size == 2
  return 'Please, enter two alleles on both sides of each parent gametes' unless genotype_1.size == genotype_2.size
  return 'please, both letters should be identical on both parents' unless genotype_1.downcase == genotype_2.downcase
  return "homologous alleles must be alike" if genotype_2[0].upcase != genotype_2[1].upcase or genotype_1[0].upcase != genotype_1[1].upcase
  return  "Please, geneticists use letters only for genetic crosses" if ("0".."9").to_a.include?((/[0-9]/.match(genotype_1).to_s))
  puts "Enter recessive trait"
  rt = gets.chop.capitalize
  puts 'Enter Dominant trait'
  dt = gets.chop.capitalize
  segregation_1 = genotype_1.chars
  segregation_2 = genotype_2.chars
  offspring_1 = segregation_1[0] + segregation_2[0]
  offspring_2 = segregation_1[0] + segregation_2[1]
  offspring_3 = segregation_1[1] + segregation_2[0]
  offspring_4 = segregation_1[1] + segregation_2[1]
  phenotype = {-1=>"Homozygous recessive #{rt}", 0 =>"Heterozygous Dominant #{dt}", 1 =>"Homozygous Dominant #{dt}"}
  case a.size == b.size
  when true
    if offspring_1.chars.sort.join == offspring_1.chars.sort.join.downcase
      puts offspring_1.chars.sort.join + ' ' + phenotype[-1]
    elsif offspring_1.chars.sort.join == offspring_1.chars.sort.join.upcase
      puts offspring_1.chars.sort.join + ' ' + phenotype[1]
    elsif offspring_1.chars.sort.join == offspring_1.chars.sort.join.capitalize
      puts offspring_1.chars.sort.join + ' ' +  phenotype[0]
    end
    if offspring_2.chars.sort.join == offspring_2.chars.sort.join.downcase
      puts offspring_2.chars.sort.join + ' ' + phenotype[-1]
    elsif offspring_2.chars.sort.join == offspring_2.chars.sort.join.upcase
      puts offspring_2.chars.sort.join + ' ' + phenotype[1]
    elsif offspring_2.chars.sort.join == offspring_2.chars.sort.join.capitalize
      puts offspring_2.chars.sort.join + ' ' + phenotype[0]
    end
    if offspring_3.chars.sort.join == offspring_3.chars.sort.join.downcase
      puts offspring_3.chars.sort.join + ' ' + phenotype[-1]
    elsif offspring_3.chars.sort.join == offspring_3.chars.sort.join.upcase
      puts offspring_3.chars.sort.join + ' ' + phenotype[1]
    elsif offspring_3.chars.sort.join == offspring_3.chars.sort.join.capitalize
      puts offspring_3.chars.sort.join + ' ' + phenotype[0]
    end
    if offspring_4.chars.sort.join == offspring_4.chars.sort.join.downcase
      puts offspring_4.chars.sort.join + ' ' + phenotype[-1]
    elsif offspring_4.chars.sort.join == offspring_4.chars.sort.join.upcase
      puts offspring_4.chars.sort.join + ' ' + phenotype[1]
    elsif offspring_4.chars.sort.join == offspring_4.chars.sort.join.capitalize
      puts offspring_4.chars.sort.join + ' ' + phenotype[0]
    end
  else
    puts 'Please enter two alleles on both sides of each parent gametes'
  end
end


def rCompleteDominance(a,b)
  te = genotype_1 = a.to_s.swapcase, genotype_2 = b.to_s.swapcase
  CompleteDominance(te[0],te[1])
end




