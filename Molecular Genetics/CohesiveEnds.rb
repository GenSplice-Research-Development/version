def CohesiveEnds(a,b="R")
  seq = a.upcase.chars.reject{|r|r != ?A and r != ?G and r != ?C and r != ?T}
  type = b
  return "Argument Error" unless type == "R" or type.class == Integer
  if seq.count.even? == true
    if type == "R"
       nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G', :'5' => '3', :'3' => '5'}
       pick = [*1..seq.size.pred] #Generates numbers as gaps where a strand will be cut.
       pick_2 = pick.delete(pick[pick.count/2]) #It removes a middle number
       pick = pick.sample(1) #picks a number at random
       strand = seq.each.map{|h| h.to_sym} #Will convert any letter to symbols
       comp = strand.each.map{|n| nucleotides[n]}.join #Will give corresponding values in hash nucleotides
       comp_1 = seq.join.reverse #Will reverse the original strand
      return "This strand is not palindromic, please enter a palindromic strand" unless comp == comp_1
       code_s = seq.join.insert(pick[0], "x") #Will insert a number a position supplied by pick local variable
       code_2 = code_s.split("x") #Will the string a x character
       temp_s = code_2.map{|w|w.reverse}.reverse #Will reverse the results for code_2
      puts  code = "5'-" + code_2[0]  + "-3'" #Will get first nucleotides in list of code_2
      puts  temp = "3'-"  + temp_s[0] + "-5'"  #Will get first nucleotides in list of temp_s
      puts " "
      if code_2[1].size > temp_s[1].size
        puts  cod = "5'-" + code_2[1] + "-3'"
        puts   tem = ( "3'-"+ temp_s[1]).rjust([code_2[1].size,temp_s[1].size].max + 3)+"-5'"
      else
        puts  cod = ("5'-" +  code_2[1]).rjust([code_2[1].size,temp_s[1].size].max + 3) + "-3'"
        puts tem = "3'-" + temp_s[1] + "-5'"
      end


    elsif type.class == Integer
      return "positive numbers only" if type.negative? == true
      nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G', :'5' => '3', :'3' => '5'}
      pick = [*1..seq.size.pred] #Generates numbers as gaps where a strand will be cut.
      return "Cannot cut in the middle for it will leave a blunt strand" if type == (seq.count)/2
      pick_2 = pick.delete(pick[pick.count/2]) #It removes a middle number
      return "The number entered is out of scope" if pick.include?(type) == false
      strand = seq.each.map{|h| h.to_sym} #Will convert any letter to symbols
      comp = strand.each.map{|n| nucleotides[n]}.join #Will give corresponding values in hash nucleotides
      comp_1 = seq.join.reverse #Will reverse the original strand
      return "This strand is not palindromic, please enter a palindromic strand" unless comp == comp_1
      code_s = seq.join.insert(type, "x") #Will insert a number a position supplied by pick local variable
      code_2 = code_s.split("x") #Will the string a x character
      temp_s = code_2.map{|w|w.reverse}.reverse #Will reverse the results for code_2
      puts  code = "5'-" + code_2[0]  + "-3'" #Will get first nucleotides in list of code_2
      puts  temp = "3'-"  + temp_s[0] + "-5'"  #Will get first nucleotides in list of temp_s
      puts " "
      if code_2[1].size > temp_s[1].size
        puts  cod = "5'-" + code_2[1] + "-3'"
        puts   tem = ( "3'-"+ temp_s[1]).rjust([code_2[1].size,temp_s[1].size].max + 3)+"-5'"
      else
        puts  cod = ("5'-" +  code_2[1]).rjust([code_2[1].size,temp_s[1].size].max + 3) + "-3'"
        puts tem = "3'-" + temp_s[1] + "-5'"
      end

    end
  elsif seq.count.odd? == true
    if type == "R"
      nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G', :'5' => '3', :'3' => '5'}
      pick = [*1..seq.size.pred].sample(1) #Generates numbers as gaps where a strand will be cut.
      strand = seq.each.map{|h| h.to_sym} #Will convert any letter to symbols
      comp = strand.each.map{|n| nucleotides[n]} #Will give corresponding values in hash nucleotides
      comp_2 = seq
      return "This strand is not palindromic, please enter a palindromic strand" unless comp.take(comp.count/2) == comp_2.last(comp_2.count/2).reverse
      code_s = seq.join.insert(pick[0], "x") #Will insert a number a position supplied by pick local variable
      code_2 = code_s.split("x") #Will the string a x character
      temp_s = code_2.map{|w|w.reverse}.reverse #Will reverse the results for code_2
      puts  code = "5'-" + code_2[0]  + "-3'" #Will get first nucleotides in list of code_2
      puts  temp = "3'-"  + temp_s[0] + "-5'"  #Will get first nucleotides in list of temp_s
      puts " "
      if code_2[1].size > temp_s[1].size
        puts  cod = "5'-" + code_2[1] + "-3'"
        puts   tem = ( "3'-"+ temp_s[1]).rjust([code_2[1].size,temp_s[1].size].max + 3)+"-5'"
      else
        puts  cod = ("5'-" +  code_2[1]).rjust([code_2[1].size,temp_s[1].size].max + 3) + "-3'"
        puts tem = "3'-" + temp_s[1] + "-5'"
      end
    elsif type.class == Integer
      return "positive numbers only" if type.negative? == true
      nucleotides = {:A => 'T', :G => 'C', :T => 'A', :C =>'G', :'5' => '3', :'3' => '5'}
      pick = [*1..seq.size.pred] #Generates numbers as gaps where a strand will be cut.
      return "The number entered is out of scope" if pick.include?(type) == false
      strand = seq.each.map{|h| h.to_sym} #Will convert any letter to symbols
      comp = strand.each.map{|n| nucleotides[n]} #Will give corresponding values in hash nucleotides
      comp_2 = seq

      return "This strand is not palindromic, please enter a palindromic strand" unless comp.take(comp.count/2) == comp_2.last(comp_2.count/2).reverse
      code_s = seq.join.insert(type, "x") #Will insert a number a position supplied by pick local variable
      code_2 = code_s.split("x") #Will the string a x character
      temp_s = code_2.map{|w|w.reverse}.reverse #Will reverse the results for code_2
      puts  code = "5'-" + code_2[0]  + "-3'" #Will get first nucleotides in list of code_2
      puts  temp = "3'-"  + temp_s[0] + "-5'"  #Will get first nucleotides in list of temp_s
      puts " "
      if code_2[1].size > temp_s[1].size
        puts  cod = "5'-" + code_2[1] + "-3'"
        puts   tem = ( "3'-"+ temp_s[1]).rjust([code_2[1].size,temp_s[1].size].max + 3)+"-5'"
      else
        puts  cod = ("5'-" +  code_2[1]).rjust([code_2[1].size,temp_s[1].size].max + 3) + "-3'"
        puts tem = "3'-" + temp_s[1] + "-5'"
      end
    end
  end
rescue NoMethodError
  puts "Argument Error"
end