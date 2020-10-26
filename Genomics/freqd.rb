def FrequencyDNANumber(a,b)
  seq = a.upcase.chars.reject{|e|e != ?A and e != ?C and e != ?G and e != ?T}.join
   piece = b.upcase.chars.reject{|e|e != ?A and e != ?C and e != ?G and e != ?T}.join
  return "DNA letters only in string quotes" if piece.class == Integer or piece.class == Rational or piece.class == Float or piece.class == Array or piece.class == Regexp
   if piece.size == 1
     case piece
     when ?A
       seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}
       seq_2.count(?A)
     when ?T
            seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}
            seq_2.count(?T)
     when ?G
       seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}
       seq_2.count(?G)
     when ?C
       seq_2 = seq.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}
       seq_2.count(?C)
     else
       puts "DNA is a sequence of A, G, C, and T called nucleotides"
     end
   elsif piece.size >= 1
     if Regexp.new(piece).match(seq).to_s == piece

       while true
         seq = seq.sub(piece, "X")
         break if seq.include?(piece) == false
       end
       seq.count("X")
       else
       puts "Sorry, such sequence is not found in the DNA sequence under investigated"
     end

   end
  end

