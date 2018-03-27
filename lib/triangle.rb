class Triangle

attr_accessor :s1, :s2, :s3, :kind

	def initialize(s1, s2, s3)
		@s1 = s1
		@s2 = s2
		@s3 = s3
	end

	def kind
	if (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s2 +  s3) <= s1 || (s3 + s1) <= s2
	validate_triangle
		begin
			raise TriangleError
		end

		# begin
		# 	raise TriangleError
		# rescue TriangleError => error
		# 		puts error.message
		# end

		elsif s1 ==  s2 && s1 == s3
			self.kind = :equilateral
	
		elsif s1 == s2 || s1 == s3 || s2 == s3 
			self.kind = :isosceles
	
		else
			self.kind = :scalene
		end
	end

	def validate_triangle
    real_triangle = [(s1 + s2 > s3), (s1 + s3 > s2), (s2 + s3 > s1)]
    [s1, s2, s3].each { |s| real_triangle << false if s <= 0 }
		
		raise TriangleError if real_triangle.include?(false)
  end
end


class TriangleError < StandardError
	def message
		puts "not a triangle"
	end
end
