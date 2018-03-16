class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    triangle?

    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    if side1 <= 0 || side2 <= 0 || side3 <= 0 || side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise TriangleError
    end
  end
end


class TriangleError < StandardError
  def message
    "ERROR! This is not a triangle."
  end
end
