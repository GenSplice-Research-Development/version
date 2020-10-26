#Tribute to Marianne Grunberg Manago and Severo Ochoa
def PolyPhosphate(a)
  poryphos = a.to_s.upcase.chars.reject{|w| w !="C" and w != "U" and w != "A" and w != "G"}

  case poryphos[0]
  when  "A"
    puts "Polyadenylic acid " + "5'-" + poryphos.reject{|s|  s != "A" }.join + "-3'"
  when  "U"
    puts "Polyuridylic acid "  + "5'-" + poryphos.reject{|s|  s != "U" }.join + "-3'"
  when  "G"
    puts "Polyguanidylic acid " + "5'-" + poryphos.reject{|s|  s != "G" }.join + "-3'"
  when "C"
    puts "Polycytilic acid " +  "5'-" + poryphos.reject{|s|  s != "C" }.join + "-3'"
  else
    "No RNA present"
  end
end