def LetterCapitalize(str)

  return str.split(' ').map(&:capitalize).join(' ')
         
end

puts LetterCapitalize("Argument goes here")