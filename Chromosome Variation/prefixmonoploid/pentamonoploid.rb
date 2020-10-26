def PentaploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 5
rescue NoMethodError
  puts "Argument error"
end