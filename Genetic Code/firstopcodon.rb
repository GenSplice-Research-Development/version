#It shows the first stop codon that appears in a given sequence entered
def FirstStopCodon(a)
  seq = a.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?U}.join
  stopcodon = ["UAA","UGA","UAG"]
  pos = []
  (pos << stopcodon.count.times.map{|e|seq.index(stopcodon[e])})
  pos_2 = pos.flatten
  bag_2 = (bag = [] << stopcodon << pos_2).transpose.to_h
  if pos_2.compact.empty? != true
    little = pos_2.compact.min
    puts bag_2.key(little) + " #{little+1}"+"-"+"#{little+3}"
  else
    puts "No stop codon found in this sequence you have entered"
  end
end