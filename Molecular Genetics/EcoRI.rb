def EcoRI(a)
  seq = a.upcase.chars.reject{|cr|cr != ?A and cr != ?T and cr != ?G and cr != ?C}.join
  base = {:C=>?G, :G=>?C,:A=>?T,:T=>?A}
  comp = seq.upcase.chars.map{|q|base[(seq[q]).to_sym]}.join
  if ((/GAATTC/.match(seq)).to_s) == "GAATTC"
    if ((/GAATTC/.match(seq)).to_s) == "GAATTC"    #If "GAATTC" is present
    while true
      seq = seq.insert((seq.index("GAATTC") + 1), "X")
      break if seq.include?("GAATTC") == false
    end
    elsif ((/GAATTC/.match(seq)).to_s) != "GAATTC"   #If "GAATTC" is present
      seq
    end
    seq
    if ((/CTTAAG/.match(seq)).to_s) == "CTTAAG"    #If "CTTAAG" is present
      while true
        seq = seq.insert((seq.index("CTTAAG") + 5), "X")
        break if seq.include?("CTTAAG") == false
      end
    elsif (/CTTAAG/.match(seq)).to_s == "CTTAAG"   #if "CTTAAG" is not present
      seq
    end
    seq_2 = seq.lines("X").each{|sd|sd.delete!("X")}
    while true
      comp = comp.insert((comp.index("GAATTC".reverse!) + 5), "X")
      break if comp.include?("GAATTC".reverse!) == false
    end
    comp
    if ((/GAATTC/.match(comp)).to_s) == "GAATTC"    #If "GAATTC" is present
      while true
        comp = comp.insert((comp.index("GAATTC") + 1), "X")
        break if comp.include?("GAATTC") == false
      end
    elsif (/GAATTC/.match(comp)).to_s == "GAATTC"   #if "GAATTC" is not present
      comp
    end
    comp

    comp_2 = comp.lines("X").each{|sd|sd.delete!("X")}.each.map{|xd| "3'-" + xd }
    comp_3 = comp_2.each.map{|df| comp_2[0] == df ? df.rjust(df.length) : df.rjust(df.length + 4)}
    puts seq_2.count.times.map{|r|("5'-" + seq_2[r] + "-3'" +"\n"+  comp_3[r] + "-5'").each_line{|io| io}}
  elsif ((/CTTAAG/.match(seq)).to_s) == "CTTAAG"   #IF CTTAAG is present
    if ((/CTTAAG/.match(seq)).to_s) == "CTTAAG"    #If "CTTAAG" is present
      while true
        seq = seq.insert((seq.index("CTTAAG") + 5), "X")
        break if seq.include?("CTTAAG") == false
      end
    elsif (/CTTAAG/.match(seq)).to_s == "CTTAAG"   #if "CTTAAG" is not present
      seq
    end
    seq
    seq_2 = seq.lines("X").each{|sd|sd.delete!("X")}.each.map{|xd| "5'-" + xd }
    if ((/GAATTC/.match(comp)).to_s) == "GAATTC"    #If "GAATTC" is present
      while true
        comp = comp.insert((comp.index("GAATTC") + 1), "X")
        break if comp.include?("GAATTC") == false
      end
    elsif (/GAATTC/.match(comp)).to_s == "GAATTC"   #if "GAATTC" is not present
      comp
    end
    comp

    comp_2 = comp.lines("X").each{|sd|sd.delete!("X")}.each.map{|xd| "3'-" + xd }
    comp_3 = comp_2
    seq_3 = seq_2.each.map{|wf| seq_2[0] == wf ? wf.rjust(wf.length) : wf.rjust(wf.length + 4)}
    puts comp_3.count.times.map{|r|(seq_3[r] + "-3'" +"\n"+  comp_3[r] + "-5'").each_line{|io| io}}
  else
    puts "No recognition sequence found"
  end
rescue NoMethodError
  puts "No recognition sequence found"
end


