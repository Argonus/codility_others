def last_five_items
	strings_table = Array.new()
	File.open('output.txt', "r") do |file|
		file.each_line {|line| strings_table << line.chomp }
	end
	x = strings_table.length


	new_file = File.new('output.txt', 'w')
	if x <= 5
		strings_table.each {|word| new_file.puts word}
	else
		strings_table.last(5).each { |word| new_file.puts word }
	end

	
end

last_five_items