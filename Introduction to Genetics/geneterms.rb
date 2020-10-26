puts ""
@a = gets.chomp.upcase.chars.reject{|w| w == " "}.join.to_sym
def acroyn

  dataacroyn = {:DNA => "Deoxynucleic Acid", :RNA => "Ribonucleic Acid", :IS => "Insertion Sequence"}
  dataacroyn[@a]


end

puts acroyn