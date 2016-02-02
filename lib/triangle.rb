require 'pry'
class Triangle
	
	attr_accessor :sides
  
  def initialize(side1, side2, side3)
  	@sides = [side1,side2,side3]
  end
  
  def kind
  	if !self.valid?
  		raise TriangleError
  	else
  		hash = sides.inject(Hash.new(0)) {|h, i| h[i] += 1; h}
  		if hash.values.max < 2
  			:scalene
  		else
  			hash.values.max > 2 ? :equilateral : :isosceles
  		end
  	end
  end
  
  def valid?
  	return if sides.any? {|side| side <= 0}
  	sides[0] + sides[1] > sides[2] &&
  	sides[0] + sides[2]> sides[1] &&
  	sides[1] + sides[2] > sides[0]
  end
end

class TriangleError < StandardError
	def message
		"Not a valid triangle"
	end
end