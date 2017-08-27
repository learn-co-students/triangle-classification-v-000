
class Triangle
  # write code here
  	attr_reader :side1, :side2, :side3, :sides
  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  	@sides = [side1, side2, side3]
  end

  def kind
  	if self.valid_triangle?
  		return :scalene if self.sides.uniq == self.sides
  		return :equilateral if self.sides.uniq.size == 1
  		return :isosceles if self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
  		
  	else
  			raise TriangleError
  	end

  end

  def valid_triangle?

  	return false if @sides.any? {|side| side <= 0}
		return false if self.side1 + self.side2 <= self.side3
		return false if self.side2 + self.side3 <= self.side1
		return false if self.side1 + self.side3 <= self.side2
		return true
	end

end

class TriangleError < StandardError
 # triangle error code
 	def message
 		"you must input a geometrically possible triange"
 	end
end