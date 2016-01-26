class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    raise TriangleError if self.zero_or_negative_sides?
    raise TriangleError if self.inequal?
    return :equilateral if self.equilateral?
    return :isosceles if self.isosceles?
    return :scalene if self.scalene?
  end

  def equilateral?
    return true if (@side1 == @side2 && @side2 == @side3)
    false
  end

  def isosceles?
    return true if (@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
    false
  end

  def scalene?
    return true if (@side1 != @side2 && @side2 != @side3 && @side1 != @side3)
    false
  end

  def zero_or_negative_sides?
    return true if (@side1 <= 0 || side2 <= 0 || side3 <= 0) 
    false 
  end

  def inequal?
    return true if (@side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2)
    false
  end

end

class TriangleError < StandardError
end
