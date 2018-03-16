require 'pry'

class Triangle
	attr_accessor :side_a, :side_b, :side_c, :triangle

	@@triangle = []

	def initialize(side_a ,side_b ,side_c)
		@side_a = side_a
		@side_b = side_b
		@side_c = side_c
		@triangle = [side_a, side_b, side_c]
	end

  	def kind
  		sum = 0
  		triangle = []

  		triangle= @triangle.sort
  		sum = (triangle[0] + triangle[1]) > triangle[2]

  		

  		if @triangle.detect {|side| side <=0} || !sum
  			raise TriangleError
  		else
  			find_kind
  		end
	end
  		

  	def find_kind
  		equality = 0

  		@triangle.each_with_index do |side, index| 
  			@triangle.each_with_index do |side_2, place|
  				if !(place == index)
	  				if side == side_2
	  					equality +=1
	  				end
  				end
  			end
  		end

  		if equality == 0
  			:scalene
  		elsif equality == 2
  			:isosceles
  		else equality == 3
  			:equilateral
  		end
  	end

end

class TriangleError < StandardError
end