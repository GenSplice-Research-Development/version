#It gives the percentage of two,four and six genotype
def GenotypePercent(a,b)
  genotype_1 = a.to_s

  if genotype_1.size == 2 #When there is one gene or two alleles
          genotype_2 = b.to_s
      ratio = []
      return 'Please, the limit number of alleles is two on each side' unless (genotype_1 and genotype_2).size == 2
      return 'Please, enter two alleles on both sides of each parent gametes' unless genotype_1.size == genotype_2.size
      return 'please, both letters should be identical on both parents' unless genotype_1.downcase == genotype_2.downcase
      return "homologous alleles must be alike" if genotype_2[0].upcase != genotype_2[1].upcase or genotype_1[0].upcase != genotype_1[1].upcase
      return  "Please, geneticists use letters only for genetic crosses" if ("0".."9").to_a.include?((/[0-9]/.match(genotype_1).to_s))

      geno = genotype_1.chars
      geno_2 = genotype_2.chars
      geno.count.times{|k| geno_2.count.times{|v|ratio << geno[k] + geno_2[v]}}
      fook = ratio.each.map{|z|z.chars.sort.join}.tally
      num = fook.values.each.map{|ef|((ef/4.0)*100).round.to_s + "%"}  #Numbers generated
      num_2 = fook.keys #Keys generated
      realratio = [] << num_2 << num
      real = realratio.transpose
     real.to_h

  elsif genotype_1.size == 4 #When there are two genes or four alleles

      genotype_2 = b.to_s
      ratio = []
      ratio_2 = []
      ratio_3 = []
      return "Gene error" if (genotype_2.class != String) or (genotype_1.class != String)
      return 'Only four alleles are allowed' if genotype_1.size != genotype_2.size
      return 'First two alleles are not compatible.' if (genotype_1[0..1]).upcase != (genotype_2[0..1]).upcase
      return 'Last two alleles are not compatible.' if (genotype_1[2..3]).upcase != (genotype_2[2..3]).upcase
      return 'Only four alleles are allowed' if genotype_1.size < 4 || genotype_2.size < 4 || genotype_1.size > 4 || genotype_2.size > 4
      return "homologous alleles must be alike" unless genotype_1[0].upcase == genotype_1[1].upcase and genotype_1[2].upcase == genotype_2[3].upcase
      return  "Please, geneticists use letters only for genetic crosses" if ("0".."9").to_a.include?((/[0-9]/.match(genotype_1).to_s))
      first = genotype_1[0..1].chars
      second = genotype_2[0..1].chars
      first.count.times{|k| second.count.times{|v|ratio << first[k] + second[v]}}
      gene_1 = ratio.each.map{|z|z.chars.sort.join}
      third = genotype_1[2..3].chars
      fourth = genotype_2[2..3].chars
      third.count.times{|k|fourth.count.times{|v|ratio_2 << third[k] + fourth[v]}}
      gene_2 = ratio_2.each.map{|f|f.chars.sort.join}
      gene_1.count.times{|d|gene_2.count.times{|m|ratio_3 << gene_1[d] + gene_2[m]}}
      fook = ratio_3.tally
      num = fook.values.each.map{|ef|((ef/16.0)*100).round.to_s + "%"}  #Numbers generated
      num_2 = fook.keys #Keys generated
      realratio = [] << num_2 << num
      real = realratio.transpose
     real.to_h
  elsif genotype_1.size == 6

      genotype_2 = b.to_s
      ratio = []
      ratio_2 = []
      ratio_3 = []
      ratio_4 = []
      ratio_5 = []
      return "Gene error" if (genotype_2.class != String) or (genotype_1.class != String)
      return 'Only six alleles are allowed on both sides' if genotype_1.size != genotype_2.size
      return 'First two alleles are not compatible.' if (genotype_1[0..1]).upcase != (genotype_2[0..1]).upcase
      return 'second two alleles are not compatible.' if (genotype_1[2..3]).upcase != (genotype_2[2..3]).upcase
      return 'last two alleles are not compatible.' if (genotype_1[4..5]).upcase != (genotype_2[4..5]).upcase
      return 'Only six alleles are allowed on both sides' if genotype_1.size < 6 || genotype_2.size < 6 || genotype_1.size > 6 || genotype_2.size > 6
      return "Please, geneticists use letters only for genetic crosses" if ("0".."9").to_a.include?((/[0-9]/.match(genotype_1).to_s))
      return "homologous alleles must be alike" unless genotype_1[0].upcase == genotype_1[1].upcase and genotype_1[2].upcase == genotype_1[3].upcase and genotype_1[4].upcase == genotype_1[5].upcase

      first = genotype_1[0..1].chars
      second = genotype_2[0..1].chars
      first.count.times{|k| second.count.times{|v|ratio << first[k] + second[v]}}
      gene_1 = ratio.each.map{|z|z.chars.sort.join}
      third = genotype_1[2..3].chars
      fourth = genotype_2[2..3].chars
      third.count.times{|k|fourth.count.times{|v|ratio_2 << third[k] + fourth[v]}}
      gene_2 = ratio_2.each.map{|f|f.chars.sort.join}
      fifth = genotype_1[4..5].chars
      sixth = genotype_2[4..5].chars
      fifth.count.times{|k|sixth.count.times{|v|ratio_3 << fifth[k] + sixth[v]}}
      gene_3 = ratio_3.each.map{|j|j.chars.sort.join}

      gene_1.count.times{|d|gene_2.count.times{|m|ratio_4 << gene_1[d] + gene_2[m]}}
      ratio_4
      ratio_4.count.times{|y|gene_3.count.times{|u|ratio_5 << ratio_4[y] + gene_3[u]}}

      fook = ratio_5.tally
      num = fook.values.each.map{|ef|((ef/64.0)*100).round.to_s + "%"}  #Numbers generated
      num_2 = fook.keys #Keys generated
      realratio = [] << num_2 << num
      real = realratio.transpose
      puts real.to_h

  end
rescue NoMethodError
  puts "Argument Error"
end