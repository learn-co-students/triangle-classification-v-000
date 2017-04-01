class Triangle
  attr_accessor :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def TriangleInequality?
    if (side1 + side2 <= side3 or side2 + side3 <= side1 or side1 + side3 <= side2)
      true
    else
      false
    end
  end

  def ZeroOrNegativeSides?
    if side1 <= 0 or side2 <= 0 or side3 <= 0
      true
    else
      false
    end
  end

  def kind
    if TriangleInequality? or ZeroOrNegativeSides?
      raise TriangleError
    else
      if side1 == side2 and side2 == side3
        :equilateral
      elsif side1 != side2 and side2 != side3 and side1 != side3
        :scalene
      else
        :isosceles
      end
    end
  end
end

class TriangleError < StandardError
end
