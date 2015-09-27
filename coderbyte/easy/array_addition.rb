def ArrayAdditionI(arr)
  
  i = 2

    while i < arr.length
     return true if arr.combination(i).map{|x| x.inject(:+)}.include?(arr.max)
     i += 1
   end

 false  
end
   