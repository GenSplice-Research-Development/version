def pqarm(a)
  dna_seq = a.upcase.chars.reject{|d| d != "T" and d != "G" and d != "A" and d != "C" }
  puts "How many segments has a chromosome gained or lost?"
  nucleo = gets.chomp.to_i
  puts "Is the occurrence on p or q arm?"
  arm = gets.chomp.downcase
  return "Augment error" unless arm == "q" or arm == "p"
  puts "Has it gained or lost? Enter - or +"
  sign = gets.chomp
  return "Augment error" unless sign == "+" or sign == "-"
  if arm == "p" and sign == "+"
    s = (%w[A T G C] * 10 ** 6).sample(nucleo)
    puts "5'-" +  dna_seq.insert(0, s).join + "-3'"
  elsif arm == "p" and sign == "-"
    return "Too many than required" if nucleo > dna_seq.count
    puts "5'-" +  dna_seq.drop(nucleo).join + "-3'"
  elsif arm == "q" and sign == "+"
    s = (%w[A T G C] * 10 ** 6).sample(nucleo)
    puts "5'-" + dna_seq.insert(-1, s).join + "-3'"
  elsif arm == "q" and sign == "-"
    return "Too many than required" if nucleo > dna_seq.count
    dna_seq.pop(nucleo)
     puts "5'-" + dna_seq.join + "-3'"
  else
    puts "Augment error"
  end
end