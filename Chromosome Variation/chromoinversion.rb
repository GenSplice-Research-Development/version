def ChromosomeInversion(s, b=0,e=0)
  seq = s.upcase
  start = b
  stop = e
  return 'base error' if start > stop or start.negative? == true or stop.negative? == true or seq.length <= stop-1 or start.zero? == true

  if start < stop
    piece = (seq[start-1..stop-1]).reverse
    final_seq = seq.sub(seq[start-1..stop-1], piece)
    puts "5'-" + final_seq + "-3'"
  elsif  start == stop
    seq
      end
end