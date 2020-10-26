#Integers in a list are introns of mRNA
# Array represents a gap that needs to be removed as a whole intron in mRNA4
def Spliceosome(x,*b)
  seq = x.upcase.chars.reject{|f|f != ?A and f != ?G and f != ?U and f != ?C}.join
  intron = b.reject{|d|d.class != Integer and d.class != Array}
  if intron.all?(Integer) == true
    pocket = [] #Empty set for constructing a condition
      real=  intron.map{|p|p.abs}.map{|d|d-1}.uniq #substract -1 from each item and removes duplicated member
       seq_2 = seq.chars    #Creates an array
      seq_3 = seq.chars.each_index.map{ |gh| gh }.map{|t|t+1} #Creates a position for each item in a list and later on adds a +1 to each item
      real.count.times{|g|pocket << seq_3.include?(real[g])} #Inserts true of false in empty pocket
      pocket
    if (pocket.all?(true)) == true
      real.count.times.map{|w|seq_2[real[w]] = "x" } #Substitute an item for x
      p  seq_f = seq_2.join.split("x").reject{|f|f==""} #Removes empty items in a list
      puts "Enter the segments you want to splice by their position they have occupied using integers separated by commas."
      list = gets.chop.split(",").map{|v|v.to_i}.map{|d|d-1}
      puts  "5'-"  + list.each.map{|k|seq_f[k]}.compact.join + "-3'"
    else
       puts "Some numbers entered in a list are out of scope of the sequence being investigated"
    end

  elsif intron.all?(Integer) == false
    pocket = []
    seq_i = intron.reject{|a|a.class != Integer} #Extract integers from a list
    seq_a = intron.reject{|a|a.class != Array}.map{|q|q.sort}.map{|r|(r[0]..r[1]).to_a}.flatten.uniq #Extracts array from a list
    real = (seq_a + seq_i).map{|p|p.abs}.map{|d|d-1}.uniq #Combines the two and makes integers absolute value and reduces them by -1
    seq_2 = seq.chars
    seq_3 = seq.chars.each_index.map{ |gh| gh }.map{|t|t+1} #Creates a position for each item in a list and later on adds a +1 to each item
    real.count.times{|g|pocket << seq_3.include?(real[g])} #Inserts true of false in empty pocket
    pocket
    if (pocket.all?(true)) == true
      real.count.times.map{|w|seq_2[real[w]] = "x" } #Substitute an item for x
      p seq_f = seq_2.join.split("x").reject{|f|f==""} #Removes empty items in a list
      puts "Enter the segments you want to splice by their position they have occupied using integers separated by commas."
      list = gets.chop.split(",").map{|v|v.to_i}.map{|d|d-1}
      puts  "5'-"  + list.each.map{|k|seq_f[k]}.compact.join + "-3'"
    else
      puts "Some numbers entered in a list are out of scope of the sequence being investigated"
    end

  else
    puts "Error make sure that your list contains positive integers and list containers"
  end
rescue ArgumentError
  puts "Argument Error"
rescue TypeError
  puts "Argument Error"
rescue NoMethodError
  puts "Argument Error"
end