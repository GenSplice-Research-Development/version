def PossibleGenotypes(b)
    num = b.to_i
    return "Math error" if num == 0 or num.odd? == true
    2 ** num
    rescue NoMethodError
    puts "Math error"
 end