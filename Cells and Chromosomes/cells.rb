#Please note that this program operates under an assumption that there is no apoptosis and necrosis
def Cells(d)
  num = d
  return "Argument Error" if num.negative? == true
  if num.class == Float
    puts 'Decimals numbers are not allowed'
  elsif  num.class == String
    puts 'Strings are not allowed'
  else
    puts "#{2.pow(num).to_s + ' cells'}"
  end
rescue NoMethodError
  puts "Argument Error"
end