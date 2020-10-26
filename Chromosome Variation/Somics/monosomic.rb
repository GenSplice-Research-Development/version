def Monosomic(b)
  number = b #integer number
  return "Argument error" unless number.integer? == true
  number - 1
rescue NoMethodError
  puts "Argument error"
end