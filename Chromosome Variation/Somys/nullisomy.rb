def Nullisomy(b, a = 0)
  eu = b #Even number
  chrom = a     #Chromosome number
  return "only even numbers permitted" if eu.odd? == true
  set = {2 => "||"}
  if chrom == 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*0..(diploid.count-1)].sample(1).pop
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary_2 = kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
    kary_2.delete_at(chromo_number)
    kary_2
  elsif chrom != 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*1..(diploid.count)]
    return "Chromosome number is beyond the scope" if chromo_number.include?(chrom) != true
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary_2 =  kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
    kary_2.delete_at(chrom-1)
    kary_2
  end
end