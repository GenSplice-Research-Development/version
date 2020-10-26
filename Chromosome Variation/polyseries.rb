#Returns the series of polyploid with nth terms
def Polyseries(*b)
  list = *b
  final = []
  return p 'No decimals or strings' if list.any?(String) == true or list.any?(Float) == true
  list_2 = list.count.times.each.map{|e|[*1..list[e]].each.map{|n| list[e] % n == 0 and n}.reject{|n| n==false}}
  list_3 = list_2.count.times.each.map{|z|list_2[0] & list_2[z]}.flatten.uniq
  list_4 = ([list_3.count.times.each.map{|j|list.count.times.each.map{|t| list[t] % list_3[j]}}.each_with_index.map{ |e| e == [0] * list.count }] << list_3).transpose
  numb = list_4.find_all{|o,p| [o,p.integer?] == [true,true]}.flatten.uniq.delete_if { |e|e ==true }.max
  list.each.map{|h|"#{h / numb}" + "n"}.unshift(numb)
  end