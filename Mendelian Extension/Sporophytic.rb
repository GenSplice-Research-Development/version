def sapro((*a),(*b))
  fem_gametes = *a
  mal_gametes = *b
  return "gametes augement error" if mal_gametes.count > 4 or fem_gametes.count > 4

  if mal_gametes.count.times.map{|q|fem_gametes.include? mal_gametes[q] or q}.any?(TrueClass) == true
    "No fertilization occurred"
  else
  viable = mal_gametes.count.times.map{|q|fem_gametes.include? mal_gametes[q] or q}.reject{|sd|sd == true}
  viable_2 = viable.count.times.map{|xc|mal_gametes[viable[xc]]}.uniq
  fem_gametes.product(viable_2).each.map{|f, k| ["S" + f.to_s, k.to_s].join("/")}.uniq
  end
end