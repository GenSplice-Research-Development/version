def MonoploidHeptaploid(a)
  number = a
  return "Argument error" if number % 7 != 0
  number/7
rescue NoMethodError
  puts "Argument error"
end