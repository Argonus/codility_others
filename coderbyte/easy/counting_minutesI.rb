def CountingMinutesI(str)
  	arr                = str.split('-')
  	time1, time2       = arr[0].to_s.split(':'), arr[1].to_s.split(':')
	hour1, hour2       = time1[0].to_i, time2[0].to_i
	minutes1, minutes2 = (time1[1][0..1]).to_i, (time2[1][0..1]).to_i
  	
  	if time1[1][2..3] != time2[1][2..3]
      	hours = countDifferentAMPM(hour1, hour2)
    else
      	hours = countSameAMPM(hour1, hour2, minutes1, minutes2)
    end
  
  return minuteCount(minutes1, minutes2, hours)
end

def countDifferentAMPM(hour1, hour2)
  hours = (12-hour1) + hour2
end

def countSameAMPM(hour1, hour2, minutes1, minutes2)
  	if hour2 > hour1
		hours = hour2 - hour1
	elsif hour1 > hour2 
		hours = (hour1 - hour2) + 12
	elsif hour1 == hour2 && minutes1 < minutes2
		hours = 0
	else
		hours = 24
	end
	return hours
end



def minuteCount(minutes1, minutes2, hours)
	if minutes1 < minutes2
		minutes = minutes2 - minutes1
	elsif minutes1 > minutes2
		minutes = (60 - minutes1) + minutes2
		hours -= 1
	else
		minutes = 0
	end
	time = (hours *= 60) + minutes
	return time
end

puts CountingMinutesI("11:03am-1:39pm")