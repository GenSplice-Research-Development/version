def HexaploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 6
rescue NoMethodError
  puts "Argument error"
end