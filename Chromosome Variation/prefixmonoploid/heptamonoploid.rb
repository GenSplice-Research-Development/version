def HeptaploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 7
rescue NoMethodError
  puts "Argument error"
end