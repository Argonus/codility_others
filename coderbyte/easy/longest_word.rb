def LongestWord(sen)

  sen = sen.split(" ").map { |s| s.gsub(/\W+/,"") }.max_by(&:length)
  return sen 
         
end

puts LongestWord("a beautiful sentence^&!")