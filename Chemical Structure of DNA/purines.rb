#It shows purines bases in a seq of DNA
def Purines(a)
  seq = a.chars.reject{|e|e != ?A and e != ?G}.join

end