def TetraploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 4
rescue NoMethodError
  puts "Argument error"
end