def MonoploidTetraploid(a)
  number = a
  return "Argument error" if number % 4 != 0
  number/4
rescue NoMethodError
  puts "Argument error"
end