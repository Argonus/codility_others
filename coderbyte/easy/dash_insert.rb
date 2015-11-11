def DashInsert(str)	
	 str.to_s.gsub(/([13579])(?=[13579])/, '\1-')
end


   