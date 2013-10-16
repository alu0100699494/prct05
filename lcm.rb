require "./gcd.rb"

def lcm(a, b)
	(a * b / gcd(a, b) )
end

puts lcm(5, 7)