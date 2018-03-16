class Triangle
	attr_reader :a, :b, :c

	def initialize(a, b, c)
		@a, @b, @c = a, b, c
	end

	def kind
		if check_sides || check_triangle_inequality
			raise TriangleError
		else
			if a == b && b == c
				:equilateral
			elsif a == b || a == c || b == c
				:isosceles
			else
				:scalene
			end
		end
	end

	def check_sides
		a <= 0 || b <= 0 || c <= 0
	end

	def check_triangle_inequality
		a + b <= c || a + c <= b || b + c <= a
	end

end

class TriangleError < StandardError

end