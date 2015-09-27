def ABCheck(str)
  
  matches = str.scan(/a...b/)
  
  return matches.any?
         
end
   