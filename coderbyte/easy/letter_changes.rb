def LetterChanges(str)

  str.tr!('a-z', 'b-za').tr!('aeiou', 'AEIOU')
    
  return str 
         
end

puts LetterChanges("Argument goes here")