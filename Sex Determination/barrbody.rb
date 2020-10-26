#Credited to Mary F. Lyon for her hypothesis.
def BarrBody(bb)
   sex_chromo = bb.upcase.chars.reject{|w|w !="X" and w != "Y"}
   xy = sex_chromo.tally
   case xy["X"] - 1
   when 0
     puts "No barr bodies present"
   when 1
     puts 1.to_s + " Barr body present"
   when 2..10*100
     puts (xy["X"] - 1).to_s + " Barr bodies present"
   else
     puts "Negative"
   end
rescue NoMethodError
  puts "Barr body error"
end