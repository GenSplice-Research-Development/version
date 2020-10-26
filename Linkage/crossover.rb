#Please note that this crossover is based on complete dominance
def CrossOver((*c),(*n),t=[])
  sischrom_1 = *c
  sischrom_2 = *n

  return "must be equal" unless sischrom_2.count == sischrom_1.count
  return "not empty" if sischrom_1.empty? == true or sischrom_2.empty? == true
  return "error" if sischrom_1.any?(Integer) == true or sischrom_2.any?(Integer) == true or sischrom_2.any?(Float) == true or sischrom_1.any?(Float) == true
  return "genes are not equally linked" unless sischrom_1.each.map{|xc|xc.upcase} == sischrom_2.each.map{|mc|mc.upcase}
  return "at least 2 are needed" if sischrom_1.count < 2 or sischrom_2.count < 2
  if sischrom_1.count == 2 and t.empty? == true

    puts a = sischrom_1.join("-")
    puts  sischrom_2.join("-")
    puts reco = sischrom_1.each{sischrom_1[0] = sischrom_2[0]}.join("-")

    puts reco_2 = sischrom_2.each{sischrom_2[0] = a[0]}.join("-")

  elsif sischrom_1.count == sischrom_2.count and (t.empty?) == false
    return "must be equal" unless sischrom_2.count == sischrom_1.count and sischrom_2.count == t.count
    return "genes are not equally linked" unless sischrom_1.each.map{|xc|xc.upcase} == sischrom_2.each.map{|mc|mc.upcase} and sischrom_1.each.map{|xc|xc.upcase} == t.each.map{|sd|sd.upcase}
    return "at least 2 genes are needed" if sischrom_1.count < 2 or sischrom_2.count < 2
    puts "Enter Dominant trait for #{(sischrom_1[0]).upcase}"
    domg = gets.chomp.capitalize
    puts "Enter recessive trait for #{(sischrom_2[0]).downcase}"
    recg = gets.chomp.capitalize
    puts "Enter Dominant trait for #{(sischrom_1[1]).upcase}"
    domg_2 = gets.chomp.capitalize
    puts "Enter recessive trait for #{(sischrom_2[1]).downcase}"
    recg_2 = gets.chomp.capitalize

    p pare_1 = sischrom_1
    p reco = pare_1.drop(1).insert(0, sischrom_2[0])
    p pare_2 = sischrom_2
    p reco_2 = [pare_2[0] = pare_1[0]] + [pare_2[1]]


  else
    puts "Only two genes are needed"
  end



end