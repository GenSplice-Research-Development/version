def AssignRYN(a)
  seq = a.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T and r != ?R and r != ?Y and r != ?N}.join


  while true
    purines = %w(A G).sample(1)
    puri = purines[0]
    seq = seq.sub(?R, puri)
    break if seq.include?(?R) == false
  end
  seq
  while true
    purines = %w(C T).sample(1)
    puri = purines[0]
    seq = seq.sub(?Y, puri)
    break if seq.include?(?Y) == false
  end
  seq
  while true
    purines = %w(C G T A).sample(1)
    puri = purines[0]
    seq = seq.sub(?N, puri)
    break if seq.include?(?N) == false
  end
  seq
rescue NoMethodError
  puts "Argument error"
end