def factorial (n)
	if n>0
		x=1
		(1..n).each do |i|
			x*=i
		end
		puts x
	end
end

factorial 5