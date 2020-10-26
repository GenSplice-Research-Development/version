def DiploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 2
rescue NoMethodError
  puts "Argument error"
end