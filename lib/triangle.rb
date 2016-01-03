class Triangle
	attr_accessor :kind

	def initialize(s1, s2, s3)
		if s1 > 0 && s2 > 0 && s3 > 0 && s1 + s2 > s3 && s1 + s3 > s2 && s2 + s3 > s1
			if s1 == s2 && s2 == s3
				@kind = :equilateral
			elsif s1 == s2 || s2 == s3 || s3 == s1
				@kind = :isosceles
			elsif s1 != s2 && s2 != s3 && s3 != s1
				@kind = :scalene
			end
		end
	end

	def kind
		case @kind
			when :equilateral
				:equilateral
			when :isosceles
				:isosceles
			when :scalene
				:scalene
			else 
				raise TriangleError
		end
	end
end

class TriangleError < StandardError
end
