def fizzbuzz
	(1..100).each do |i|
		s = ''
		s.concat("fizz") if i%3==0 
		s.concat("bizz") if i%5==0 
		s.concat("hizz") if i%7==0 
		s.concat("lizz") if i%9==0
		if (s.empty?)
			p i
		else
			puts s
		end	
	end
end

fizzbuzz