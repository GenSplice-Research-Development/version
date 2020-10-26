def TripleMonosomy(b, a = 0, c = 0, d = 0)
  eu = b #Even number
  chrom = a     #Chromosome number
  chrom_2 = c   #Chromosome number 2
  chrom_3 = d   #chromosome number 3
  return "Only even numbers permitted" if eu.odd? == true
  return "Chromosome number too small" if eu < 8
  set = {2 => "||"}
  if chrom == 0 and chrom_2 == 0 and chrom_3 == 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*0..(diploid.count-1)].sample(3)
    first = chromo_number[0]    #picks the first number in chromo_number
    second = chromo_number[1]    #picks the second number in chromo_number
    third = chromo_number[2]     #picks the third number in chromo_number
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary[first] = "|"   #replaces a number with || to |||
    kary[second] = "|"  #replaces a number with || to |||
    kary[third] = "|"   #replaces a number with || to |||
    kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
  elsif chrom != 0 and chrom_2 == 0 and chrom_3 == 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*1..(diploid.count)]
    chromo_number2 = [*0..(diploid.count-1)].sample(1).pop      #Get a random number
    chromo_number3 = [*0..(diploid.count-1)].sample(1).pop      #Get a random number
    return "Chromosome number is beyond the scope" if chromo_number.include?(chrom) != true
    return "Chromosome error, probably numbers are alike" if chrom == chromo_number2 or chrom == chromo_number3 or chromo_number2 == chromo_number3
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary[chrom-1] = "|"
    kary[chromo_number2] = "|"
    kary[chromo_number3] = "|"
    kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
  elsif chrom != 0 and chrom_2 != 0 and chrom_3 == 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*1..(diploid.count)]
    chromo_number2 = [*0..(diploid.count-1)].sample(1).pop      #Get a random number
    return "One of the chromosome number is beyond the scope" if chromo_number.include?(chrom) != true or chromo_number.include?(chrom_2) != true
    return "Chromosome error, probably numbers are alike" if chrom == chrom_2 or chrom == chromo_number2 or chrom_2 == chromo_number2
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary[chrom-1] = "|"
    kary[chrom_2-1] = "|"
    kary[chromo_number2] = "|"
    kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
  elsif chrom != 0 and chrom_2 != 0 and chrom_3 != 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*1..(diploid.count)]
    return "One of the chromosome number is beyond the scope" if chromo_number.include?(chrom) != true or chromo_number.include?(chrom_2) != true
    return "Chromosome error, probably numbers are alike" if chrom == chrom_2 or chrom == chrom_3 or chrom_2 == chrom_3
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary[chrom-1] = "|"
    kary[chrom_2-1] = "|"
    kary[chrom_3-1] = "|"
    kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
  end
end