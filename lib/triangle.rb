require 'pry'

class Triangle

	attr_reader :side1, :side2, :side3, :sides
	
	def initialize(side1, side2, side3)
		@side1 = side1
		@side2 = side2
		@side3 = side3
		@sides = [side1, side2, side3]
	end
	
	def kind
		if ((self.side1 == self.side2) && (self.side2 == self.side3)) && self.sides.all? {|x| x > 0} && (self.side1 + self.side2 > self.side3 && self.side2 + self.side3 > self.side1 && self.side1 + self.side3 > self.side2)
			:equilateral
		elsif ((self.side1 == self.side2) || (self.side2 == self.side3) || (self.side1 == self.side3)) && (self.sides.all? {|x| x > 0} && self.side1 + self.side2 > self.side3 && self.side2 + self.side3 > self.side1 && self.side1 + self.side3 > self.side2)
			:isosceles
		elsif ((self.side1 != self.side2) && (self.side2 != self.side3) && (self.side1 != self.side3)) && (self.sides.all? {|x| x > 0} && self.side1 + self.side2 > self.side3 && self.side2 + self.side3 > self.side1 && self.side1 + self.side3 > self.side2)
			:scalene	
		else
			raise TriangleError
		end
	end
end

class TriangleError < StandardError
end
