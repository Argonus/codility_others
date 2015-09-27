def SecondGreatLow(arr)

	array_uniq = arr.uniq.sort 	
	if array_uniq.length == 2
    	value = array_uniq.sort
    	return "#{value[1]} #{value[0]}"	
  	end
 
  return "#{array_uniq[1]} #{array_uniq[-2]}"
         
end