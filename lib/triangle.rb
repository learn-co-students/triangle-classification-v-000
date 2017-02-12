class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def trianglehavesides
  	raise TriangleError if side1 == 0 && side2 == 0 && side3 == 0
  end

  def validateTriangle
  	trianglehavesides
  	real_triangle = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    [side1, side2, side3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  def kind
  	validateTriangle
  	if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end
end
  
  class TriangleError < StandardError
  	end

