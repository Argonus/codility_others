def checklist
	array = Array.new
	hash = Hash.new
	total = 0

	File.open('input.txt', 'r') do |file|
		file.each_line {|line| array << line.chomp}
	end
	array.map! {|item| item.split(" ")}

	array.each {|item| hash[item[0]] = 0}
	array.each do |item|
		if item[1].to_i > 0.00
			hash[item[0]] += 1
		elsif item[1].to_i < 0.00
			hash[item[0]] -= 1
		end	
	end
	hash.delete_if {|key, value| value == 0 }

	array = hash.sort
	array.each { |item| total += item[1]}
	array.push(["total", total])

	array.map! {|item| item.join(' ')}
	string = array.join("\n")
	

	new_file = File.new('output.txt', "w")
	new_file.print string
end

checklist