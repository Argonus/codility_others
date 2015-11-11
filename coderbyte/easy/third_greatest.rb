def ThirdGreatest(strArr)
	array = strArr {|a, b| b.length <=> a.length}
  	array[2]
end