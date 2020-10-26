#Note this chromosome mutation is based on tandem duplication
def ChromosomeDuplication(s,b=0,c=0,d=1)
  seq= s.upcase      #sequence of the base pair
  start = b   #where base pair start
  stop = c   #where base pair end
  num_dup = d   #number of duplicate of a base sequence
  return 'base error' if start > stop or start.negative? == true or stop.negative? == true or seq.length <= stop-1 or start.zero? == true or num_dup.negative? ==true

  if start < stop
    piece = (seq[start-1..stop-1]) * num_dup
    final_seq = seq.insert(stop, piece)
    puts "5'-" + final_seq + "-3'"
  elsif  start == stop
    seq
  end

end