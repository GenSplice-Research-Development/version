def MonoploidHexaploid(a)
  number = a
  return "Argument error" if number % 6 != 0
  number/6
rescue NoMethodError
  puts "Argument error"
end