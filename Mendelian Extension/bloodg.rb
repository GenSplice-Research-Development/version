def BloodGroup(a,b)
  bloodbase = %w[AA AO AB OO BO BB]
  bloodtype_1 = a.upcase.chars.sort.join
  bloodtype_2 = b.upcase.chars.sort.join

  return "Blood group alleles are not recognised" if (bloodbase.include? bloodtype_1) == false or (bloodbase.include? bloodtype_2) == false
  bloodbank = {:AO => "Blood group type A", :BO => "Blood group type B", :AB => 'Blood group type AB',
               :OO => 'Blood group type O', :AA => 'Blood group type A', :BB => 'Blood group type B'}
  bloodgroups = (bloodtype_1.chars.product(bloodtype_2.chars)).each.map{|i|i.sort.join}

  puts bloodbank[(bloodgroups[0]).to_sym]

  puts bloodbank[(bloodgroups[1]).to_sym]

  puts bloodbank[(bloodgroups[2]).to_sym]

  puts bloodbank[(bloodgroups[3]).to_sym]

rescue NoMethodError
  puts 'Please, input blood group alleles'

end