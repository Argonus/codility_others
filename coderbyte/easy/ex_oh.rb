def ExOh(str)

  xs = str.scan(/x/).size
  os = str.scan(/o/).size
  if xs == os 
    return true 
  else
    return false
  end
  
end
   