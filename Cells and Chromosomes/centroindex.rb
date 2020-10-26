#Not based on the standards
def CentromereIndex(b)
  real = b.abs
  return "argument error" if real.real? != true
  if real >= 0.0 and real < 0.05
    puts "Telocentric "
  elsif real >= 0.05 and real < 0.2
    puts "Acrocentric "
  elsif real >= 0.2 and real < 0.45
      puts "Submetacentric"
  elsif real >= 0.45 and real <= 0.55
    puts "Metacentric "
  elsif real > 0.55 and real < 0.8
    puts "Submetacentric"
  elsif real >= 0.8 and real < 0.95
    puts "Acrocentric "
  elsif real >= 0.95 and real <= 1.0
    puts "Telocentric "
  else
    puts "out of range"

  end
end