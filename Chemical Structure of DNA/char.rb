#A tribute to Erwin Chargaff
def Chargaff(*b,a)
  nib = *b.map{|d|d.upcase}.sort
  percent = a.abs
  return "Only integers are permitted" unless percent.class == Integer or percent.class == Float
  return "Only one or two bases are allowed" if nib.count > 2
  if nib.count == 1
    return "argument error" if nib[0].length > 1 or nib[0].length < 1
    return "base error" unless nib[0] == ?C or nib[0] == ?T or nib[0] == ?A or nib[0] == ?G or nib[0].class == String
    case nib[0]
    when "A"
      totalpercent =  percent * 2
      gcpercent1 = 100 - totalpercent
      gcpercent2 = gcpercent1/2.0

      bases = {:A => percent,:T => percent,:G => gcpercent2,:C => gcpercent2}
      puts bases
    when "T"
      totalpercent =  percent * 2
      gcpercent1 = 100 - totalpercent
      gcpercent2 = gcpercent1/2.0

      bases = {:T => percent,:A => percent,:G => gcpercent2,:C => gcpercent2}
      puts  bases
    when "G"
      totalpercent =  percent * 2
      gcpercent1 = 100 - totalpercent
      gcpercent2 = gcpercent1/2.0

      bases = {:G => percent,:C => percent,:T => gcpercent2,:A => gcpercent2}
      puts bases

    when "C"
      totalpercent =  percent * 2
      gcpercent1 = 100 - totalpercent
      gcpercent2 = gcpercent1/2.0

      bases = {:C => percent,:G => percent,:T => gcpercent2,:A => gcpercent2}
      puts  bases
    else
      puts "error"
    end

  elsif nib.count == 2
    return "argument error" if nib[0].length > 1 or nib[0].length < 1 or nib[1].length > 1 or nib[1].length < 1
    return "base error" unless nib[0] == ?C or nib[0] == ?T or nib[0] == ?A or nib[0] == ?G or nib[0].class == String
    return "base error" unless nib[1] == ?C or nib[1] == ?T or nib[1] == ?A or nib[1] == ?G or nib[1].class == String
    return "Only G and C or T and A are allowed" unless nib == %w(C G) or nib == %w(A T)
    case nib
    when %w(A T)
      totalpercent =  percent / 2
      gcpercent1 = 100 - percent
      gcpercent2 = gcpercent1/2.0

      base = {:A => totalpercent,:T => totalpercent,:G => gcpercent2,:C => gcpercent2}
      puts base
    when %w(C G)
      totalpercent =  percent / 2
      gcpercent1 = 100 - percent
      gcpercent2 = gcpercent1/2.0

      base = {:C => totalpercent,:G => totalpercent, :T => gcpercent2,:A => gcpercent2}
      puts  base

    else
      puts "error"
    end

  end

rescue NoMethodError
  puts "base error"
end