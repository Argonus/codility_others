def SimpleSymbols(str)
  test = false
  num = str.length
  string = str.gsub(/[a-z]/i, 'x')
  string = string.split('')
  return false if string[0] == 'x' || string[-1] == 'x'
  
	for i in 0..(num-1)
      if string[i] == 'x'
      	return false unless string[i-1] == '+' && string[i+1] == '+'
      end
    end
  
  	
  # code goes here
  return true
         
end

puts SimpleSymbols("+a+a+")
puts SimpleSymbols("=b+b+b=b")