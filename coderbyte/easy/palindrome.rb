def Palindrome(str)
  
  if str.delete(' ') == str.delete(' ').reverse
    return true
  else
    return false
  end
  
end