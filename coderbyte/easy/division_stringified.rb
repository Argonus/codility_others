def DivisionStringified(num1,num2)
  rounded = (num1.to_f / num2.to_f).round
  return rounded if rounded.to_s.length <= 3

  "%.3f" % (num1.to_f / num2.to_f)     
end

# 4/5 points in test case. 