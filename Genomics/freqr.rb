def FrequencyRNANumber(a,b)
  seq = a.upcase.chars.reject{|e|e != ?A and e != ?C and e != ?G and e != ?U}.join
  piece = b.upcase.chars.reject{|e|e != ?A and e != ?C and e != ?G and e != ?U}.join
  return "RNA letters only in string quotes" if piece.class == Integer or piece.class == Rational or piece.class == Float or piece.class == Array or piece.class == Regexp
  if piece.size == 1
    case piece
    when ?A
      seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?U}
      seq_2.count(?A)
    when ?U
      seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?U}
      seq_2.count(?U)
    when ?G
      seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?U}
      seq_2.count(?G)
    when ?C
      seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?U}
      seq_2.count(?C)
    else
      puts "RNA is a sequence of A, G, C, and U called nucleotides"
    end
  elsif piece.size >= 1
    if Regexp.new(piece).match(seq).to_s == piece

      while true
        seq = seq.sub(piece, "X")
        break if seq.include?(piece) == false
      end
      seq.count("X")
    else
      puts "Sorry, such sequence is not found in the RNA sequence under investigated"
    end

  end
end

