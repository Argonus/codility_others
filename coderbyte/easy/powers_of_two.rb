def PowersofTwo(num)
	num.to_s(2).scan(/1/).size == 1
end
   