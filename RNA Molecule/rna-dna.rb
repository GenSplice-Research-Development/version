#Generating RNA STRAND FROM DNA STRAND
def DNAcRNA(s)
  strand = s.upcase.chars.each.map{|h| h.to_sym}
  nucleotides = {:A => 'U', :G => 'C', :T => 'A', :C =>'G', :'5' => '3', :'3' => '5'}
  comp = strand.each.map{|n| nucleotides[n]}.join
  if comp[0] != comp[-1]
    comp
  else
    'The input strand does not have a complimentary strand'
  end
end