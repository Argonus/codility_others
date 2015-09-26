def SimpleAdding(num)
	sum = 0
  (1..num).each{|a| sum += a}
  return sum 
         
end

puts SimpleAdding(5)