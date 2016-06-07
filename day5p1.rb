def day5p1(input)
	i=0
	input.split("\n").each do |string|
	if string=~ /[aeiou]\w*[aeiou]\w*[aeiou]/  &&string=~ /([a-z])\1/
	i=i+1	unless string=~ /(ab|cd|pq|xy)/
end
end
	puts i
end	 
day5p1('ugknbfddgicrmopn
	jchzalrnumimnmhp
	haegwjzuvuyypxyu
	dvszwmarrgswjxmb')