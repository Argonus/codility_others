def LetterCountI(str)
  higest_count = 0
  higest = ""
  
  str.split(" ").each do |word|
    word.split("").each do |letter|
      if word.count(letter) > higest_count
        higest = word
        higest_count = word.count(letter)
      end
  	end
  end
  
    higest_count == 1 ? "-1" : higest
         
end