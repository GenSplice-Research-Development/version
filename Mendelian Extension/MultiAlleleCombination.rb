def MultiAlleleCombination(*a)
  allelelist = *a
  duplicate = allelelist.map{|e|e+e}
  takelist = allelelist.take(allelelist.count - 1)
  bulk = []
  (allelelist.count-1).times{|r|bulk << allelelist[r+1..-1]}
  combi = []
  bulk.count.times{|u|bulk[u].count.times{|o|combi << takelist[u]+bulk[u][o]}}
  combi + duplicate
end