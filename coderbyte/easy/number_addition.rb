def NumberAddition(str)
  str = str.gsub(/[aA-zZ]/, ' ').split(' ').map{|x| x.to_i}
  total = str.inject(:+)
end