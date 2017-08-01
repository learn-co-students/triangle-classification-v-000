class Triangle
	require 'pry'
	attr_accessor :l1, :l2, :l3

	def initialize (l1, l2, l3)
		@l1 = l1
		@l2 = l2
		@l3 = l3
	end

	def kind

		if  @l1 <= 0 || @l2 <= 0 || @l3 <= 0 #
			kind = :illegal

		elsif @l1 + @l2 <= @l3 || @l3 + @l2 <= @l1 || @l1 + @l3 <= @l2  
			kind = :illegal

		elsif @l1 == @l2 && @l2 == @l3
		kind = :equilateral

		elsif @l1 == @l2 || @l2 == @l3 || @l3 == @l1
		kind = :isosceles

		elsif @l1 != @l2 && @l2 != @l3 && @l1 != @l3
			kind = :scalene
		end
#binding.pry
		if kind == :illegal
			begin
				raise TriangleError
				#rescue TriangleError => error
					#puts error.message
			end
		end	
		kind
	end
		
end

class TriangleError < 
	StandardError

	def message
		"you must give the kind method a valid set of triangle values"
	end
end
