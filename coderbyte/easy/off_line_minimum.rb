def OffLineMinimum(strArr)
		result_string = ""
		subset_string = []

		strArr.each do |character|
			if character == 'E'
				subset_string.sort!
				result_string << subset_string.shift
				result_string << ','
			else
				subset_string << character
			end
		end

		return result_string.chomp(',')
         
end

def 