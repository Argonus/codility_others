def ArithGeo(arr)
  diff = arr[1] - arr[0]
  if arr[0] != 0
  	ratio = arr[1] / arr[0]
  else
    return -1
  end
  
  arith = true
  geo = true
  i = 2
  
  while i < arr.length
    if arr[i-1] + diff != arr[i]
      arith = false
    end
    if arr[i-1] * ratio != arr[i]
      geo = false
    end
    i += 1
  end

  if arith
    return "Arithmetic"
  elsif geo
    return "Geometric"
  else
    return "-1"
  end    
end