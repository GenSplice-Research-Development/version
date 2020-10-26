def rRNA #RNA directed DNA polymerase enzyme used to synthesize complimentary DNA from RNA
  puts "Enter the sequence of RNA" #This tells you to enter a base pairs found in RNA
  wer = gets.chomp.chars #Changes a string to arrays containing base pairs
  return 'syntax error' if wer.include?('b') == true or wer.include?('d') == true or wer.include?('e') == true or wer.include?('f') == true or wer.include?('h') == true or wer.include?('i') == true or wer.include?('j') == true or wer.include?('k') == true or wer.include?('l') == true or wer.include?('m') == true or wer.include?('n') == true or wer.include?('o') == true or wer.include?('p') == true or wer.include?('r') == true or wer.include?('s') == true or wer.include?('v') == true or wer.include?('w') == true or wer.include?('x') == true or wer.include?('y') == true or wer.include?('z') == true
  re = wer.each.map{|a|a.upcase}.map{|f|f.to_sym} #turns an array of strings to symbols
  base = {:U => :A, :G => :C, :C => :G, :A => :T}  #Hash containing base pairs
  re.each.map{|w|base[w]}.map{|f|f.to_s}.join #Gives out a string of base pair chained by a symbol '-'
end