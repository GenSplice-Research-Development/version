def Phosphate(b)
  seq = b.upcase.chars.reject{|s|s != ?C and s != ?A and s != ?T and s != ?G}
  return "No Phosphates formed" if seq.empty? == true
  puts String((seq.count - 1)).rjust(4)
  puts               "O".rjust(4)
          puts       "|".rjust(4)
  puts  "-O"+"—"+"P"+"—"+"0"
          puts       "|".rjust(4)
          puts       "O".rjust(4)

rescue NoMethodError
  puts "No phosphate formed"



end