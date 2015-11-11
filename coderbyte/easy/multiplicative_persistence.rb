def MultiplicativePersistence(num)
  val = 0
  while num.to_s.length > 1
    num = num.to_s.split('').map{|x| x.to_i}.inject(:*)
    val += 1
  end
  
  val        
end