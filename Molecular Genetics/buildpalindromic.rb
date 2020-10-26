def BuildPalindromic(a,b=0)
  seq =a.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}.join
  type = b
  return "Sequence needs to have at least two nucleotides" if seq.size == 1
  return "Enter only 'even' or 'odd'" unless type == "even" or type == "odd" or type == 0


if type == 0
  box = %W(odd even).sample(1)
  box_2 = box[0]
  if box_2 == "even"
    nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G'} #Hash containing complementary nucleotides
    seq_2 = seq.chars.map{|n| nucleotides[n.to_sym]}.join #converts complementary nucleotides
     seq_3 = seq + seq_2.reverse 
    seq_4 = seq_3.chars.map{|n| nucleotides[n.to_sym]}.join
    puts "5'-" +  seq_3 + "-3'"
    puts "3'-" + seq_4 + "-5'"
  elsif box_2 == "odd"
    nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G'}
    seq_2 = (seq[0..(seq.length - 2)]).chars.map{|n| nucleotides[n.to_sym]}.join
   seq_3 = seq + seq_2.reverse
    seq_4 = seq_3.chars.map{|n| nucleotides[n.to_sym]}.join
    puts "5'-" +  seq_3 + "-3'"
    puts "3'-" + seq_4 + "-5'"
  end
elsif type == "odd"
  nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G'}
  seq_2 = (seq[0..(seq.length - 2)]).chars.map{|n| nucleotides[n.to_sym]}.join
   seq_3 = seq + seq_2.reverse
   seq_4 = seq_3.chars.map{|n| nucleotides[n.to_sym]}.join
  puts "5'-" +  seq_3 + "-3'"
  puts "3'-" + seq_4 + "-5'"
elsif type == "even"
  nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G'} #Hash containing complementary nucleotides
  seq_2 = seq.chars.map{|n| nucleotides[n.to_sym]}.join #converts complementary nucleotides
   seq_3 = seq + seq_2.reverse
 seq_4 = seq_3.chars.map{|n| nucleotides[n.to_sym]}.join
  puts "5'-" +  seq_3 + "-3'"
  puts "3'-" + seq_4 + "-5'"
else
  puts "Argument error"
end

end