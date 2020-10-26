def MonoploidOctaploid(a)
number = a
return "Argument error" if number % 8 != 0
number/8
rescue NoMethodError
puts "Argument error"
end