def TimeConvert(num)
	
  hours = num / 60
  minutes = num % 60
  string = "#{hours}:#{minutes}"
  return string 
         
end

puts TimeConvert(69)