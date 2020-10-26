def DecaploidMonoploid(a)
  num = a
  return "Argument error" unless num.integer? == true
  num * 10
rescue NoMethodError
  puts "Argument error"
end