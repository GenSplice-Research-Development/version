def ConsensusSequence(*b)
  seqs = *b.map{|r|r.upcase.chars.reject{|w|w !="A" and w != "T" and w != "G" and w != "C" }}
  set = seqs.map{|w|w.size}.uniq
  if set.count == 1
    thash = seqs.transpose.each.map{|q|q.tally}
    puts thash.count.times.map{|e| thash[e].key(thash[e].values.max)}.join
  else
    puts "One of the sequence is not equal to others "

  end
end