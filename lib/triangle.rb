class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def kind
  	if [side1, side2, side3].any? {|x| x <= 0} == true || side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
  		raise TriangleError
  	end

  	if [side1, side2, side3].uniq.length == 1
  	:equilateral
  	elsif side1 == side2 || side2 == side3 || side1 == side3 || side2 == side3
  	:isosceles
  	else
  	:scalene
  	
  	end

  end

end


class TriangleError < StandardError



end