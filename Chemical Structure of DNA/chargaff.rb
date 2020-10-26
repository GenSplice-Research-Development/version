#A tribute to Erwin Chargaff
def Echar(b)
  nib = b.upcase
  return "argument error" if nib.length > 1 or nib.length < 1
  return "base error" unless nib == ?C or nib == ?T or nib == ?A or nib == ?G or nib.class == String
  puts "what is the relative amounts of nitrogen base in #{nib}"
  fig = gets.to_i.abs
  return "argument error" unless fig.class == Integer
  return "argument error" if fig < 1
  case nib
  when "A"
    puts (Random.rand(fig.pred.to_f..fig.succ.to_f).round(1)).to_s + " thymine".capitalize
  when "T"
    puts (Random.rand(fig.pred.to_f..fig.succ.to_f).round(1)).to_s + " aDENINE".capitalize
  when "G"
    puts (Random.rand(fig.pred.to_f..fig.succ.to_f).round(1)).to_s + " cytosine".capitalize
  when "C"
    puts (Random.rand(fig.pred.to_f..fig.succ.to_f).round(1)).to_s + " Guanine".capitalize
  else
    puts "error"
  end
rescue NoMethodError
  puts "base error"
end