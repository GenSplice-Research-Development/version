#It shows pyrimidine bases in a seq of DNA
def Pyrimidines(a)
  seq = a.chars.reject{|e|e != ?C and e != ?T and e != ?U}.join

end