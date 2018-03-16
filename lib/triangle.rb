class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
	@side_one = side_one
	@side_two = side_two
	@side_three = side_three  	
  end

  def kind
  	if side_one <= 0 || side_two <= 0 || side_three <= 0
  		raise TriangleError
  	end

  	sides = [@side_one, @side_two, @side_three].sort

  	if sides[0] + sides[1] <= sides[2]
  		raise TriangleError
  	end

  	if side_one == side_two && side_one == side_three
  		value = :equilateral
  	elsif side_one == side_two || side_one == side_three || side_two == side_three
  		value = :isosceles
  	else
  		value = :scalene
  	end
  end
end

class TriangleError < StandardError

end
