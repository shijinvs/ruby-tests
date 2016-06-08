def day7p1(input)

#NOT = lambda { |i| ~i }
#AND = lambda { |i, j| i & j }
#OR = lambda { |i, j| i | j }
#LSHIFT = lambda {|i| i=i<<1}
#RSHIFT = lambda {|i| i=i>>1}

input.split("\n").each do |line|

	line.match(/(^[a-z]\w*)/)[0] ? op1=line.match(/(^[a-z]\w*)/)[0] : op1=0 
	operation=line.match(/([A-Z]\w*)/)[0]
	op2=line.match(/(\s([a-z][a-z])\s\W)/)[0]
	op3=line.match(/([a-z]\w$)/)[0]

	puts op1,op2,op3,operation
end
end


day7p1('af AND ah -> ai
NOT lk -> ll
hz RSHIFT 1 -> is
NOT go -> gp')