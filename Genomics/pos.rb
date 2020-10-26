def SequencePosition(a,b)
  seq = a.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?T and f != ?C}.join #filter for seq to avoid other letters
  piece =  b.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?T and f != ?C}.join #filter for piece to avoid  other letters
  if piece.size == 1 #if piece length is equal to one
    tank = [] #created to host position of single nucleotides in seq strand created
    body = seq.chars.each_index.map{ |e|e  } #This will give out the position of each base in the seq
    seq.size.times.each{|f| tank << body[f] if seq[f] == piece} #Will work out if a single base letter(piece) entered satisfies the condition in the block
    tank.each.map{|e|e+1} #Finally gives out the position of a nitrogenous letter entered.
  elsif piece.size >= 1 #if piece length is more than one
    if Regexp.new(piece).match(seq).to_s == piece
    tank = [] #created to host position of single nucleotides in seq strand created
    while true
      tank << seq.sub!(piece, "X" * piece.size).index(piece)
      break if seq.include?(piece) == false #break the loop when all piece are replaced by number of X's

    end
    last_p = seq.index("X" * piece.size) #While initially does not add the first index thus, this finds the initial index
    tank.unshift(last_p).compact!.each.map{|e| e + 1} #add the first index while failed to find to the list generated by while
    else
      puts "Entered piece of sequence is not found in the DNA sequence"
    end
  end
  end