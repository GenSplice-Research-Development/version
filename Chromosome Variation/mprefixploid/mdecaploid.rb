def MonoploidDecaploid(a)
  number = a
  return "Argument error" if number % 10 != 0
  number/10
rescue NoMethodError
  puts "Argument error"
end