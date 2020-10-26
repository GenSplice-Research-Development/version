def Segregation(a)
  gene = a
  return "Alleles must be alike" if gene[0].upcase != gene[1].upcase
  return  "argument error" unless gene.class != Integer
  return "Principle of segregation deals only with 2 alleles or a gene" if gene.length > 2 or gene.length < 2
  gene.chars
end