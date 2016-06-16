DIST = Hash.new

ROUTES = DATA.lines.collect { |line| line.chomp }
ROUTES.each do |way|
	/^(?<from>\w+)\sto\s(?<to>\w+)\s=\s(?<distance>\d+)$/ =~ way
	DIST[from]={} unless DIST[from]
	DIST[to]={} unless DIST[to]
	DIST[from][to] = distance.to_i
	DIST[to][from] = distance.to_i
end

	ans = DIST.keys.permutation.map do |item|
		item.each_cons(2).inject(0) do |total,(from,to)|
			total + DIST[from][to]
		end
	end
p ans.min
#{["AlphaCentauri"]["Snowdin"] => 66, ["AlphaCentauri"]["Tambi"] => 28}

__END__
AlphaCentauri to Snowdin = 66
AlphaCentauri to Tambi = 28
AlphaCentauri to Faerun = 60
AlphaCentauri to Norrath = 34
AlphaCentauri to Straylight = 34
AlphaCentauri to Tristram = 3
AlphaCentauri to Arbre = 108
Snowdin to Tambi = 22
Snowdin to Faerun = 12
Snowdin to Norrath = 91
Snowdin to Straylight = 121
Snowdin to Tristram = 111
Snowdin to Arbre = 71
Tambi to Faerun = 39
Tambi to Norrath = 113
Tambi to Straylight = 130
Tambi to Tristram = 35
Tambi to Arbre = 40
Faerun to Norrath = 63
Faerun to Straylight = 21
Faerun to Tristram = 57
Faerun to Arbre = 83
Norrath to Straylight = 9
Norrath to Tristram = 50
Norrath to Arbre = 60
Straylight to Tristram = 27
Straylight to Arbre = 81
Tristram to Arbre = 90
