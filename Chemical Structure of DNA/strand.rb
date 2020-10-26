def Strand(w,c="sense")
  seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T and wx != ?5 and wx != ?3}.join
  stra = c.downcase
  base = {:C => "G", :G => "C", :A => "T", :T => "A"}
  if stra == "sense" or stra == "coding"
    if seq[0] == "5" and seq[-1] == "3"
      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        puts  "5'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-3'"
      else
        puts  "5'-" + seq.join + "-3'"
      end
    elsif seq[0] == "3" and seq[-1] == "5" #Reverse strand of mRNA and template DNA

      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        seq_2 = seq.map{|e|e ==?U ? "T" : e}
        puts  "5'-"  + seq_2.count.times.map{|xw|base[seq_2[xw].to_sym]}.join + "-3'"
      else
        puts  "5'-" + seq.count.times.map{|xw|base[seq[xw].to_sym]}.join + "-3'"
      end

    elsif seq[0] == "5" and seq[-1] != "3" #Strand without 3 prime on right side

        seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
        return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
        if seq.include?(?U) == true
          puts  "5'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-3'"
        else
          puts  "5'-" + seq.join + "-3'"
        end

    elsif seq[0] == "3" and seq[-1] != "5" #Strand without 5 prime on right side

      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        seq_2 = seq.map{|e|e ==?U ? "T" : e}
        puts  "5'-"  + seq_2.count.times.map{|xw|base[seq_2[xw].to_sym]}.join + "-3'"
      else
        puts  "5'-" + seq.count.times.map{|xw|base[seq[xw].to_sym]}.join + "-3'"
      end

    elsif  seq[0] != "5" and seq[-1] == "3" #Strand without 5 prime on left

      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        puts  "5'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-3'"
      else
        puts  "5'-" + seq.join + "-3'"
      end

    elsif seq[0] != "3" and seq[-1] == "5" #Strand without 3 prime on left side

      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        seq_2 = seq.map{|e|e ==?U ? "T" : e}
        puts  "5'-"  + seq_2.count.times.map{|xw|base[seq_2[xw].to_sym]}.join + "-3'"
      else
        puts  "5'-" + seq.count.times.map{|xw|base[seq[xw].to_sym]}.join + "-3'"
      end

    elsif seq[0] != "5" and seq[-1] != "3"   #Strand without 5 and 3 prime on both sides

      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        puts  "5'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-3'"
      else
        puts  "5'-" + seq.join + "-3'"
      end

    end
  elsif stra == 'template' or stra == "antisense"
    if seq[0] == "3" and seq[-1] == "5"
      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        puts  "3'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-5'"
      else
        puts  "3'-" + seq.join + "-5'"
      end

    elsif seq[0] == "5" and seq[-1] == "3" #Reverse strand of mRNA and template DNA

      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        seq_2 = seq.map{|e|e ==?U ? "T" : e}
        puts  "3'-"  + seq_2.count.times.map{|xw|base[seq_2[xw].to_sym]}.join + "-5'"
      else
        puts  "3'-" + seq.count.times.map{|xw|base[seq[xw].to_sym]}.join + "-5'"
      end

    elsif seq[0] == "3" and seq[-1] != "5" #Strand without 5 prime on right side
      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        puts  "3'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-5'"
      else
        puts  "3'-" + seq.join + "-5'"
      end
    elsif seq[0] == "5" and seq[-1] != "3" #Strand without 3 prime on right side
      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        seq_2 = seq.map{|e|e ==?U ? "T" : e}
        puts  "3'-"  + seq_2.count.times.map{|xw|base[seq_2[xw].to_sym]}.join + "-5'"
      else
        puts  "3'-" + seq.count.times.map{|xw|base[seq[xw].to_sym]}.join + "-5'"
      end
    elsif  seq[0] != "3" and seq[-1] == "5" #Strand without 3 prime on left side
      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        puts  "3'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-5'"
      else
        puts  "3'-" + seq.join + "-5'"
      end

    elsif  seq[0] != "5" and seq[-1] == "3" #Strand without 5 prime on right side
      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        seq_2 = seq.map{|e|e ==?U ? "T" : e}
        puts  "3'-"  + seq_2.count.times.map{|xw|base[seq_2[xw].to_sym]}.join + "-5'"
      else
        puts  "3'-" + seq.count.times.map{|xw|base[seq[xw].to_sym]}.join + "-5'"
      end
    elsif seq[0] != "5" and seq[-1] != "3"   #Strand without 5 and 3 prime on both sides
      seq = w.upcase.chars.reject{|wx|wx != ?G and wx != ?A and wx != ?U and wx != ?C and wx != ?T}
      return "Strand cannot have both U and T" if seq.include? ?U and seq.include? ?T
      if seq.include?(?U) == true
        puts  "3'-" +  seq.map{|e|e ==?U ? "T" : e}.join + "-5'"
      else
        puts  "3'-" + seq.join + "-5'"
      end
    end
  end
rescue NoMethodError
  puts "Argument error enter coding, template, sense and antisense with a string of nucleotide sequence as first parameter"
end