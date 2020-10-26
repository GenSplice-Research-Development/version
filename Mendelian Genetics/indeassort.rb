def IndependentAssortment(a)
  genes = a
  return "genes must be even" if genes.length.odd? == true
  return "genes are two or more in independent assort" if genes.length < 4

  if genes.length == 4
    return 'First two alleles are not compatible.' if (genes[0]).upcase != (genes[1]).upcase
    return 'Last two alleles are not compatible.' if (genes[2]).upcase != (genes[3]).upcase
      divi = genes.chars
      first_game =  (divi.count - 2).times.map{|n| divi[0] + divi[n + 2]}
     second_game = (divi.count - 2).times.map{|n| divi[1] + divi[n + 2]}
       first_game + second_game
  elsif genes.length == 6
    [[genes[0],genes[2],genes[4]],[genes[0],genes[3],genes[4]],
     [genes[0],genes[2],genes[5]],[genes[0],genes[3],genes[5]],
     [genes[1],genes[2],genes[4]],[genes[1],genes[3],genes[4]],
     [genes[1],genes[2],genes[5]],[genes[1],genes[3],genes[5]]].each.map{|r|r.join}
  elsif genes.length == 8
    [[genes[0],genes[2],genes[4],genes[6]],[genes[0],genes[2],genes[5],genes[6]],
     [genes[0],genes[2],genes[4],genes[7]],[genes[0],genes[2],genes[5],genes[7]],
     [genes[0],genes[3],genes[4],genes[6]],[genes[0],genes[3],genes[5],genes[6]],
     [genes[0],genes[3],genes[4],genes[7]],[genes[0],genes[3],genes[5],genes[7]],
     [genes[1],genes[2],genes[4],genes[6]],[genes[1],genes[2],genes[5],genes[6]],
     [genes[1],genes[2],genes[4],genes[7]],[genes[1],genes[2],genes[5],genes[7]],
     [genes[1],genes[3],genes[4],genes[6]],[genes[1],genes[3],genes[5],genes[6]],
     [genes[1],genes[3],genes[4],genes[7]],[genes[1],genes[3],genes[5],genes[7]]].each.map{|r|r.join}
  end
end