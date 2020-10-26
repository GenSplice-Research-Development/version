def SexInfluentialTraits(a,b)
  genotype_1 = a.to_s
  genotype_2 = b.to_s
  puts "is the gene's influence on male or female?"
  sex = gets.chomp.capitalize
  puts "Name of trait when present"
  pre = gets.chomp.capitalize
  puts "Name of trait when absent"
  abs = gets.chomp.capitalize
  segregation_1 = genotype_1.chars
  segregation_2 = genotype_2.chars
  offspring_1 = segregation_1[0] + segregation_2[0]
  offspring_2 = segregation_1[0] + segregation_2[1]
  offspring_3 = segregation_1[1] + segregation_2[0]
  offspring_4 = segregation_1[1] + segregation_2[1]
  phenotype = {-1=>"        #{abs}", 0 =>"        #{pre}", 1 =>"        #{pre}"}
  pheno = {-1=>"        #{abs}", 0 =>"        #{abs}", 1 =>"        #{pre}"}
  return 'Please, the limit number of alleles is two on each side' unless (a and b).size == 2
  return 'Please, enter two alleles on both sides of each parent gametes' unless a.size == b.size
  return 'Please, both letters should be identical on both parents' unless a.downcase == b.downcase
  return "Please enter male or female on gene influence" unless sex.downcase == "male" or sex.downcase ==  "female"
  if sex.downcase == "male"
  case a.size == b.size
  when true
    puts "Genotype" "   Males" "    "  "     Females"
    if offspring_1.chars.sort.join == offspring_1.chars.sort.join.downcase

      puts offspring_1.chars.sort.join + ' ' + phenotype[-1]  + pheno[-1]
    elsif offspring_1.chars.sort.join == offspring_1.chars.sort.join.upcase

      puts offspring_1.chars.sort.join + ' ' + phenotype[1] +  pheno[1]
    elsif offspring_1.chars.sort.join == offspring_1.chars.sort.join.capitalize

      puts offspring_1.chars.sort.join + ' ' +  phenotype[0] + pheno[0]
    end
    if offspring_2.chars.sort.join == offspring_2.chars.sort.join.downcase

      puts offspring_2.chars.sort.join + ' ' + phenotype[-1] +  pheno[-1]
    elsif offspring_2.chars.sort.join == offspring_2.chars.sort.join.upcase

      puts offspring_2.chars.sort.join + ' ' + phenotype[1] +   pheno[1]
    elsif offspring_2.chars.sort.join == offspring_2.chars.sort.join.capitalize

      puts offspring_2.chars.sort.join + ' ' + phenotype[0] +   pheno[0]
    end
    if offspring_3.chars.sort.join == offspring_3.chars.sort.join.downcase

      puts offspring_3.chars.sort.join + ' ' + phenotype[-1] +   pheno[-1]
    elsif offspring_3.chars.sort.join == offspring_3.chars.sort.join.upcase

      puts offspring_3.chars.sort.join + ' ' + phenotype[1] +  pheno[1]
    elsif offspring_3.chars.sort.join == offspring_3.chars.sort.join.capitalize

      puts offspring_3.chars.sort.join + ' ' + phenotype[0] +   pheno[0]
    end
    if offspring_4.chars.sort.join == offspring_4.chars.sort.join.downcase

      puts offspring_4.chars.sort.join + ' ' + phenotype[-1] +   pheno[-1]
    elsif offspring_4.chars.sort.join == offspring_4.chars.sort.join.upcase

      puts offspring_4.chars.sort.join + ' ' + phenotype[1] +  pheno[1]
    elsif offspring_4.chars.sort.join == offspring_4.chars.sort.join.capitalize

      puts offspring_4.chars.sort.join + ' ' + phenotype[0] +  pheno[0]
    end
  else
    puts 'Please enter two alleles on both sides for each parent gametes'
  end
  elsif sex.downcase == "female"
    phenotype = {-1=>"        #{pre}", 0 =>"        #{abs}", 1 =>"        #{abs}"}
    pheno = {-1=>"        #{pre}", 0 =>"        #{pre}", 1 =>"        #{abs}"}
    case a.size == b.size
    when true
      puts "Genotype" "   Males" "    "  "     Females"
      if offspring_1.chars.sort.join == offspring_1.chars.sort.join.downcase

        puts offspring_1.chars.sort.join + ' ' + phenotype[-1]  + pheno[-1]
      elsif offspring_1.chars.sort.join == offspring_1.chars.sort.join.upcase

        puts offspring_1.chars.sort.join + ' ' + phenotype[1] +  pheno[1]
      elsif offspring_1.chars.sort.join == offspring_1.chars.sort.join.capitalize

        puts offspring_1.chars.sort.join + ' ' +  phenotype[0] + pheno[0]
      end
      if offspring_2.chars.sort.join == offspring_2.chars.sort.join.downcase

        puts offspring_2.chars.sort.join + ' ' + phenotype[-1] +  pheno[-1]
      elsif offspring_2.chars.sort.join == offspring_2.chars.sort.join.upcase

        puts offspring_2.chars.sort.join + ' ' + phenotype[1] +   pheno[1]
      elsif offspring_2.chars.sort.join == offspring_2.chars.sort.join.capitalize

        puts offspring_2.chars.sort.join + ' ' + phenotype[0] +   pheno[0]
      end
      if offspring_3.chars.sort.join == offspring_3.chars.sort.join.downcase

        puts offspring_3.chars.sort.join + ' ' + phenotype[-1] +   pheno[-1]
      elsif offspring_3.chars.sort.join == offspring_3.chars.sort.join.upcase

        puts offspring_3.chars.sort.join + ' ' + phenotype[1] +  pheno[1]
      elsif offspring_3.chars.sort.join == offspring_3.chars.sort.join.capitalize

        puts offspring_3.chars.sort.join + ' ' + phenotype[0] +   pheno[0]
      end
      if offspring_4.chars.sort.join == offspring_4.chars.sort.join.downcase

        puts offspring_4.chars.sort.join + ' ' + phenotype[-1] +   pheno[-1]
      elsif offspring_4.chars.sort.join == offspring_4.chars.sort.join.upcase

        puts offspring_4.chars.sort.join + ' ' + phenotype[1] +  pheno[1]
      elsif offspring_4.chars.sort.join == offspring_4.chars.sort.join.capitalize

        puts offspring_4.chars.sort.join + ' ' + phenotype[0] +  pheno[0]
      end
    else
      puts 'Please enter two alleles on both sides for each parent gametes'
    end
  end
end