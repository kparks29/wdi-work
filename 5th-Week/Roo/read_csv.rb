File.open("scott.csv", "r") do |infile|
	while (line = infile.gets)
		in_quotes = false
		(0..line.length - 1).each do |char|
			if line[idx] == "\""
				in_quotes = !in_quotes
			else
				#anything but quotes
			end
		end
	end
end