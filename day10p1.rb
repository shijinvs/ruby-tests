def read(number)
	(1..40).each do |n|
		@string = ""
		prev=number[0]
		i=0
		number.each_char do|curr|
			if curr==prev
				i+=1 
			 	prev=curr
			else
			 	@string << i.to_s
				@string << prev	 
				prev=curr
				i=1		
			end
		end
		@string << i.to_s
		@string << prev
		number.replace @string
	end
	p number.length
end
read("1113222113")
