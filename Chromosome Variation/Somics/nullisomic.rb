def Nullisomic(b)
  number = b #integer number
  return "Argument error" unless number.integer? == true
  number - 2
rescue NoMethodError
  puts "Argument error"
end