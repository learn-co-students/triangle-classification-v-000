class Triangle

  attr_accessor :isosceles, :scalene, :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    else
      raise TriangleError
    end
  end

  def equilateral?
    @side1 == @side2 && @side2 == @side3 && self.triangle_properties
  end

  def isosceles?
    (@side1 == @side2 || @side1 == @side3 || @side2 == @side3) && self.triangle_properties
  end

  def scalene?
    @side1 != @side2 && @side2 != @side3 && @side3 != @side1 && self.triangle_properties
  end

  def triangle_properties
    @side1 > 0 && @side2 > 0 && @side3 > 0 && @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
  end

end

class TriangleError < StandardError

end
