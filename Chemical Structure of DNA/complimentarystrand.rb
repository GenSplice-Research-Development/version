#Generating a complimentary strand from a given DNA strand
def ComplimentaryStrand(s)
  strand = s.upcase.chars.each.map{|h| h.to_sym}
  nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G', :'5' => '3', :'3' => '5',:R=>"Y",:Y=>"R",:N =>?N}
  comp = strand.each.map{|n| nucleotides[n]}.join
  if comp[0] == comp[-1]
    'The input strand does not have a complimentary strand'
  else
    comp
  end
end