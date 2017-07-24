class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    ineq1 = side2 + side3
    ineq2 = side1 + side3
    ineq3 = side1 + side2
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    elsif ineq1 <= side1 || ineq2 <= side2 || ineq3 <= side3
      raise TriangleError
    end

    if side1 == side2 && side2 == side3
      return :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "!!!!!TRIANGLE ERROR MESSAGE!!!!!"
  end
end
