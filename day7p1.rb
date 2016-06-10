def day7p1
value=Hash.new
DATA.each_line do |line|
	words = line.scan(/\S+/)
	puts [words[0]].to_i
	value[words[1]] = words[1].to_i if words[1] =~ /[(\d*)]/
	value[words[2]] = words[1].to_i if words[2] =~ /[(\d*)]/
	if words[1]=="->"
		value[words[2]]=value[words[0]]
	elsif words[2]=="->"
		~value[words[1]]=value[words[3]]
	elsif words[1]=="AND"
		value[words[4]] = value[words[0]] & value[words[2]]
	elsif words[1]=="OR"
		value[words[4]] = value[words[0]] | value[words[2]]
	elsif words[1]=="LSHIFT"
		value[words[4]] = value[words[0]] << value[words[2]] 
	else
		value[words[4]] = value[words[0]] >> value[words[2]] 
	end
end
end

day7p1


__END__
123 -> x
456 -> y
x AND y -> d
x OR y -> e
x LSHIFT 2 -> f
y RSHIFT 2 -> g
NOT x -> h
NOT y -> i
