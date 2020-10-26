def BasePair(a)
  typ = a
  if typ.class == String
    typ2 = typ.upcase.chars.reject{|w|w !="A" and w != "T" and w != "G" and w != "C"}.join


      if typ2.size == 1
        puts "#{(typ2.size * 2).to_s + " Nucleotides" + ", " + (typ2.size).to_s + " base pair"}"

      elsif 1 < typ.size
        puts "#{(typ2.size * 2).to_s + " Nucleotides" + ", " + (typ2.size).to_s + " base pairs"}"

      else
        puts "Enter integers greater than 0"
      end



  elsif typ.class == Integer
    if typ == 1
      puts "#{(typ * 2).to_s + " Nucleotides" ", " + typ.to_s + " base pair" }"
    elsif 1 < typ
      puts "#{(typ * 2).to_s + " Nucleotides" ", " + typ.to_s + " base pairs" }"
    else
      puts "Enter integers greater than 0"
    end
  else
    puts "Enter integers only"
  end
end