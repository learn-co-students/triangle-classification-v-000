class Triangle
  
  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def kind
  	side_array = [@side1, @side2, @side3].sort
  	if side_array.any? { | side | side <= 0 } || (side_array[0] + side_array[1] <= side_array[2])
  		raise TriangleError
  	elsif @side1 == @side2 && @side2 == @side3
  		:equilateral
  	elsif side_array == side_array.uniq
  		:scalene
  	elsif side_array.uniq.length == 2
  		:isosceles
  	end
  end

end

class TriangleError < StandardError
end
