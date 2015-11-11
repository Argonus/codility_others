def AdditivePersistence(num)
  return 0 if num < 10
  array = num.to_s.split('')
  count_numbers(array)
end

def count_numbers(array)
  count = 1
  sum = array.map{|x| x.to_i}.inject{|sum,x| sum + x }
  while sum > 9 do
    array = sum.to_s.split('')
    sum = array.map{|x| x.to_i}.inject{|sum,x| sum + x }
    count += 1
  end
  count 
end