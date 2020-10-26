#Measures the speed of the DNA molecule towards positive terminal in gel
def GelElectrophoresis(*b)
  pipette = *b
  if pipette.all?(String) == true
    pipette = *b.map{|w|w.upcase.chars.reject{|q|q != ?A and q != ?G and q != ?T and q != ?C}.join}
  small = pipette.map{|a|a.length}.min
  final = pipette.select{|f|f.length == small}
  elsif pipette.all?(Integer) == true
    pipette = *b.each.map{ |q|q.abs }
    pipette.min
  else
    puts "A list should either contain purely integers or strings"
    end
rescue NoMethodError
  puts "gooda"
end