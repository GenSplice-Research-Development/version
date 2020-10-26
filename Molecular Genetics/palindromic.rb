#Making palindromic strands using a given strand
def Palindromic(s)
  strand = s.upcase.chars.each.map{|h| h.to_sym}
  nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G', :'5' => '3', :'3' => '5'}
  comp = strand.each.map{|n| nucleotides[n]}.join
  comp_1 = s.upcase.chars.join.reverse
  com = strand.each.map{|n| nucleotides[n]}
  com_2 = s.upcase.chars
  if comp == comp_1
    comp
  elsif com.count.odd? == true && com.take(com.count/2) == com_2.last(com_2.count/2).reverse
    com.join
  else
    return 'This strand is not palindromic'
  end
end