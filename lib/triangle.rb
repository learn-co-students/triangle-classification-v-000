require 'pry'
class Triangle
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validation
    if side1 == side2 && side2 == side3
      :equilateral
    elsif
      side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    elsif
      side1 != side2 && side1 != side3
      :scalene
    end #if side1 == side2...
  end #def kind

  def validation
    raise TriangleError if (side1 <= 0 || side2 <= 0 || side3 <= 0)
    raise TriangleError if (side1 >= side2 + side3 || side2 >= side1 + side3 || side3 >= side1 + side2)
  end

  class TriangleError < StandardError
  end

end #class Triangle
