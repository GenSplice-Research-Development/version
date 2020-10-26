#Gives the possible combinations of chromosomes number during cell division
def MeioChromoDis(a)
  number = a.abs
  return "Positive Integers are allowed only from 1 to infinity" unless number.class == Integer
  return "Argument error" if number.zero? == true
  2.pow(number)
rescue NoMethodError
  puts "Argument Error"
end