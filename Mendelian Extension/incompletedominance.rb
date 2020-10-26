#Incomplete dominance
def IncompleteDominance(a,b)
  genotype_1 = a.to_s
  genotype_2 = b.to_s
  puts "Enter recessive trait"
  rt = gets.chop.capitalize
  puts 'Enter intermediate trait'
  it= gets.chop.capitalize
  puts 'Enter Dominant trait'
  dt = gets.chop.capitalize
  segregation_1 = genotype_1.chars
  segregation_2 = genotype_2.chars
  offspring_1 = segregation_1[0] + segregation_2[0]
  offspring_2 = segregation_1[0] + segregation_2[1]
  offspring_3 = segregation_1[1] + segregation_2[0]
  offspring_4 = segregation_1[1] + segregation_2[1]
  phenotype = {-1=>"Homozygous recessive #{rt}", 0 =>"Heterozygous incomplete-dominance #{it}", 1 =>"Homozygous Dominant #{dt}"}
  return 'Please, the limit number of alleles is two on each side' unless (a and b).size == 2
  return 'Please, enter two alleles on both sides of each parent gametes' unless a.size == b.size
  return 'please, both letters should be identical on both parents' unless a.downcase == b.downcase
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
    puts 'Please enter two alleles on both sides for each parent gametes'
  end
end

def rincompletedominance(a,b)
  te = genotype_1 = a.to_s.swapcase, genotype_2 = b.to_s.swapcase
  incompletedominance(te[0],te[1])
end