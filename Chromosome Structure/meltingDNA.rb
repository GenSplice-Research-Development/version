def MeltingDNA
  puts "Enter the first DNA molecule"
  mol_1 = gets.chomp.upcase.chars
  puts "Enter the second DNA molecule"
  mol_2 = gets.chomp.upcase.chars

  temp_1 = mol_1.reject{|x|x != "A" and x != "T" and x != "C" and x != "G"  }.each.map{ [mol_1.count('T') * 2, mol_1.count('A') * 2, mol_1.count('G') * 3, mol_1.count('C') * 3]}.uniq.flatten.inject(:+)
  temp_2 = mol_2.reject{|x|x != "A" and x != "T" and x != "C" and x != "G"  }.each.map{ [mol_2.count('T') * 2, mol_2.count('A') * 2, mol_2.count('G') * 3, mol_2.count('C') * 3]}.uniq.flatten.inject(:+)

  if temp_1 > temp_2
    base = {:A => "T", :G =>"C", :T => "A", :C => "G"}
    puts "5'-" + mol_1.join + "-3'"
    puts "3'-" + mol_1.count.times.map{|q|base[(mol_1[q]).to_sym]}.join + "-5'"
  elsif temp_1 < temp_2
    base = {:A => "T", :G =>"C", :T => "A", :C => "G"}
    puts "5'-" + mol_2.join + "-3'"
    puts "3'-" + mol_2.count.times.map{|q|base[(mol_2[q]).to_sym]}.join + "-5'"
  else
    puts "They have same melting point"
  end
end