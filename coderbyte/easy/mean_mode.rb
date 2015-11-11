def MeanMode(arr)
  mean, mode = mean(arr), mode(arr)
  
  mean == mode ? 1 : 0 
end

def mean(arr)
  avg = (arr.inject(0, :+).to_f)/arr.size
end

def mode(arr)
  most_repeted_number = arr.group_by(&:to_s).values.max_by(&:size).first
end