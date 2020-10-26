def MonoploidNonaploid(a)
  number = a
  return "Argument error" if number % 9 != 0
  number/9
rescue NoMethodError
  puts "Argument error"
end