#Generating dihybridcross
def DihybridCross(a,b)

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

  return "Gene error" if (genotype_2.class != String) or (genotype_1.class != String)
  return 'Only four alleles are allowed' if genotype_1.size != genotype_2.size
  return 'First two alleles are not compatible.' if (genotype_1[0..1]).upcase != (genotype_2[0..1]).upcase
  return 'Last two alleles are not compatible.' if (genotype_1[2..3]).upcase != (genotype_2[2..3]).upcase
  return 'Only four alleles are allowed' if genotype_1.size < 4 || genotype_2.size < 4 || genotype_1.size > 4 || genotype_2.size > 4
  return "homologous alleles must be alike" unless genotype_1[0].upcase == genotype_1[1].upcase and genotype_1[2].upcase == genotype_1[3].upcase

  puts "Enter Dominant trait for #{(genotype_1[0]).upcase}"
  domg = gets.chomp.capitalize
  puts "Enter recessive trait for #{(genotype_1[1]).downcase}"
  recg = gets.chomp.capitalize
  puts "Enter Dominant trait for #{(genotype_1[2]).upcase}"
  domg_2 = gets.chomp.capitalize
  puts "Enter recessive trait for #{(genotype_1[3]).downcase}"
  recg_2 = gets.chomp.capitalize

  trait_1 = {(genotype_1[0]).upcase => "#{domg}", (genotype_1[0]).downcase => "#{recg}"}
  trait_2 = {(genotype_1[2]).upcase => "#{domg_2}", (genotype_1[2]).downcase => "#{recg_2}"}

  pa_gametes_1 = (genotype_1[0..1].chars.product(genotype_2[0..1].chars)).sort_by{|r|r.sort!}
  pa_gametes_2 = (genotype_1[2..3].chars.product(genotype_2[2..3].chars)).sort_by{|r|r.sort!}
  origin_1 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[0] + pa_gametes_2[y]}).each.map{|z|z.join}
  origin_2 =  (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[1] + pa_gametes_2[y]}).each.map{|z|z.join}
  origin_3 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[2] + pa_gametes_2[y]}).each.map{|z|z.join}
  origin_4 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[3] + pa_gametes_2[y]}).each.map{|z|z.join}

  final_1 = origin_1.count.times.each.map{|u| (origin_1[u]) + " " + trait_1[origin_1[u][0]] +" " +  trait_2[origin_1[u][2]]}
  final_2 = origin_2.count.times.each.map{|u|(origin_2[u]) + " " + trait_1[origin_2[u][0]] +" " +  trait_2[origin_2[u][2]]}
  final_3 =  origin_3.count.times.each.map{|u|(origin_3[u]) + " " + trait_1[origin_3[u][0]] +" " +  trait_2[origin_3[u][2]]}
  final_4 =  origin_4.count.times.each.map{|u|(origin_4[u]) + " " + trait_1[origin_4[u][0]] +" " +  trait_2[origin_4[u][2]]}

  puts "1." + final_1[0] +" "+  "2." + final_1[1] +" "+ "3."+final_1[2] +" "+ "4."+final_1[3]
  puts "5." + final_2[0] +" "+  "6." + final_2[1] +" "+ "7."+final_2[2] +" "+ "8."+final_2[3]
  puts "9." + final_3[0] +" "+  "10." + final_3[1] +" "+ "11."+final_3[2] +" "+ "12."+final_3[3]
  puts "13." + final_4[0] +" "+  "14." + final_4[1] +" "+ "15."+final_4[2] +" "+ "16."+final_4[3]

end


def rDihybridCross(a,b,p = 0)
  te = genotype_1 = a.to_s.swapcase, genotype_2 = b.to_s.swapcase
  return 'Choose either parent 1 or 2' if p > 2 or p < 0
  if p == 0
    DihybridCross(te[0],te[1])
  elsif p == 1
    tek = genotype_1 = a.to_s.swapcase, genotype_2 = b.to_s
    DihybridCross(tek[0],tek[1])
  elsif p == 2
    tei = genotype_1 = a.to_s, genotype_2 = b.to_s.swapcase
    DihybridCross(tei[0],tei[1])
    end
end