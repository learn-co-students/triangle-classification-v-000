 class Triangle
 	attr_accessor :side_one, :side_two, :side_three
 
 	def initialize(side_one, side_two, side_three)
 		@sides = [side_one, side_two, side_three]
 	end
 	def kind
 		if @sides[0] <= 0 || @sides[1] <= 0 || @sides[2] <= 0
 			raise TriangleError
 		elsif @sides[0] + @sides[1] <= @sides[2] || @sides[1] + @sides[2] <= @sides[0] || @sides[0] + @sides[2] <= @sides[1]
 			raise TriangleError
 		else
 			if @sides[0] == @sides[1] && @sides[1] == @sides[2]
 				:equilateral
 			elsif (@sides[0] == @sides[1] && @sides[1] != @sides[3]) || (@sides[0] == @sides[2] && @sides[2] != @sides[1]) || (@sides[1] == @sides[2] && @sides[2] != @sides[0])
 				:isosceles
 			else 
 				:scalene
 			end
 		end
 	end
 end
 
 class TriangleError < StandardError
 end