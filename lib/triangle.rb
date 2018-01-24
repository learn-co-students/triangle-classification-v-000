class Triangle

	attr_reader :length_1, :length_2, :length_3
  
	def initialize(length_1, length_2, length_3)
		@length_array = []
		@length_1 = length_1
		@length_2 = length_2
		@length_3 = length_3
		@length_array << length_1
		@length_array << length_2
		@length_array << length_3
	end

	def kind
		if @length_array.include?(0) 
			raise TriangleError
		elsif @length_array.any? {|length| length < 0 }
			raise TriangleError
		elsif (length_1 + length_2 <= length_3 || length_1 + length_3 <= length_2 || length_2 + length_3 <= length_1)
			raise TriangleError
		elsif @length_array.uniq.size == 1
			:equilateral
		elsif @length_array.uniq.size == 2
			:isosceles
		else 
			:scalene
		end
	end 



end

class TriangleError < StandardError
end