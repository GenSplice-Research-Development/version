def ViralRNA(a,s=nil)
  seq = a.upcase.chars.reject{|u|u != ?A and u != ?G and u != ?C and u != ?U }
   sign = s
  return "enter only + or -" unless sign == "+" or sign == "-" or sign == nil
      base = {:G => :C, :C => :G, :A => :U,:U => :A}
  if sign == "+"
    bas = {:U => :U, :G => :G, :C => :C, :A => :A}
    puts "5'-" + seq.each.map{|f|f.to_sym}.map{|d| bas[d]}.join + "-3'"
  elsif sign == "-"
    puts  "5'-" + seq.each.map{|f|f.to_sym}.map{|n| base[n]}.join + "-3'"
  else
    puts "5'-" + seq.join + "-3'"

  end
end