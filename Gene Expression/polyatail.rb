def PolyAtail(a, n = 0)
  seq = a.upcase.chars.reject{|s|s != ?C and s != ?A and s != ?U and s != ?G}
  return "No RNA synthesised" if seq.empty? == true
  num = n
  if n.zero? == true
    number = Random.rand(100..200)
    polya = %w(A) * number
    puts (seq.append(?A,?A,?U,?A,?A,?A) + polya).join
  elsif n.zero? == false
    return "at least 100 or less or equal to 200 A nucleotides are needed" if n < 100 or n > 200
    polya = %w(A) * num
    puts "5'-" + (seq.append(?A,?A,?U,?A,?A,?A) + polya).join + "-3'"
  else
    puts "No RNA "
  end
end