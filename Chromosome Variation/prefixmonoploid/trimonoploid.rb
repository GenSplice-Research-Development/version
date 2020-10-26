def TriploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 3
rescue NoMethodError
  puts "Argument error"
end