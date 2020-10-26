def Trisomy(b, a = 0)
  eu = b #Even number
  chrom = a     #Chromosome number
  return "only even numbers permitted" if eu.odd? == true
  set = {2 => "||"}
  if chrom == 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*0..(diploid.count-1)].sample(1).pop
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary[chromo_number] = "|||"
    kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
  elsif chrom != 0
    hap = eu/2    #Creates haploid number
    diploid = [2] * hap     #Creates Karyotype
    chromo_number = [*1..(diploid.count)]
    return "Chromosome number is beyond the scope" if chromo_number.include?(chrom) != true
    kary = diploid.count.times.map{|e| set[diploid[e]]}
    kary[chrom-1] = "|||"
    kary.count.times.map{|h|  kary[h] + " => " +  "#{h + 1}"}
  end
end