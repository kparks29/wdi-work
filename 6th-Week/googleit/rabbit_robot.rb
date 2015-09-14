
replace="robot"
filename = "rabbits.txt"
outdata = File.read(filename).gsub(/rabbit/, "#{replace}").gsub(/Rabbit/, "#{replace.capitalize}")

File.open(filename, 'w') do |out|
  out << outdata
end  