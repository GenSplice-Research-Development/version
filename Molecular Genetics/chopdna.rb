def ChopDNA(b, a = 1)
  seq = b.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?T and f != ?C}.join
  numtimes = a
  base = {:C=>?G, :G=>?C,:A=>?T,:T=>?A}
  return "error" if numtimes == seq.size or numtimes.integer? != true or seq.length < numtimes
  comp = seq.upcase.chars.map{|q|base[(seq[q]).to_sym]}.join
  if numtimes == 1
    spears = [*1..(seq.size - 1)].sample(numtimes)
    (seq.size - seq.size.pred).times{|z|seq.insert(spears[z],"x")}
    (seq.size - seq.size.pred).times{|z|comp.insert(spears[z],"x")}
    seq_2 = seq.lines("x").each{|sd|sd.delete!("x")}.each.map{|xd| xd }
    comp_2 = comp.lines("x").each{|sd| sd.delete!("x")}.each.map{|xd|  "3'-" + xd }
    comp_2 = comp_2.each.map{|df| df.rjust(df.length)}
    puts seq_2.count.times.map{|r|("5'-" + seq_2[r] + "-3'" +"\n"+ comp_2[r] + "-5'").each_line{|io| io}}

  elsif numtimes >= 1
    spears = [*1..(seq.size - 1)].sample(numtimes)
    spears.count.times.collect{|z|seq.insert(spears[z],"x")}
    spears.count.times.collect{|z|comp.insert(spears[z],"x")}
    seq_2 = seq.lines("x").each{|sd|sd.delete!("x")}.each.map{|xd| xd }.map.reject{|sa|sa == ""}
    comp_2 = comp.lines("x").each{|d| d.delete!("x")}.map.reject{|sx|sx == ""}.each.map{|xo| "3'-"+ xo }
    comp_2 = comp_2.each.map{|df| df.rjust(df.length)}
    puts seq_2.count.times.map{|r|("5'-" + seq_2[r] + "-3'" +"\n"+ comp_2[r] + "-5'").each_line{|io| io}}
  end

end