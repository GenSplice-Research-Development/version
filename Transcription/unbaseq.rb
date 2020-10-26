def unbaseq(*b)
  seqs = *b.map{|r|r.upcase.chars.reject{|w|w !="A" and w != "T" and w != "G" and w != "C" }}
  set = seqs.map{|w|w.size}.uniq
  if set.count == 1
    seqs.count.times.map{|x| seqs[x].count.times.map{|n|seqs[0][n] != seqs[x][n] ? seqs[x][n].downcase : seqs[x][n]}}.each.map{|e|e.join}
  else
    puts "One of the sequence is not equal to others "

  end
end