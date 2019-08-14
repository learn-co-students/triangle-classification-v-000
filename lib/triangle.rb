class Triangle
	attr_accessor :a, :b, :c
	
	def initialize(a, b, c)
		self.a, self.b, self.c = a, b, c
	end

	def kind
		if check_sides? || check_triangle_inequality?
			raise TriangleError
		elsif self.a == self.b && self.a == self.c
			:equilateral
		elsif self.a == self.b || self.b == self.c || self.a == self.c
			:isosceles
		else
			:scalene
		end
	end

	def check_sides?
		self.a <= 0 || self.b <= 0 || self.c <= 0
	end

	def check_triangle_inequality?
		self.a + self.b <= self.c || self.a + self.c <= self.b || self.b + self.c <= self.a
	end

end
	
class TriangleError < StandardError
end
