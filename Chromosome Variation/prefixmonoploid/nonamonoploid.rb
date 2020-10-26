def NonaploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 9
rescue NoMethodError
  puts "Argument error"
end