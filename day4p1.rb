def day4p1
require 'digest/md5'
  (1..10000000).each do |i|
	val=Digest::MD5.hexdigest("yzbqklnj" + i.to_s)
	if val=~ /^00000/
		puts i
		exit
	end
  end
end

day4p1