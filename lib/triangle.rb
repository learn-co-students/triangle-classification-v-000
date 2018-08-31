class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side_1,side_2,side_3)
    @side1 = side_1
    @side2 = side_2
    @side3 = side_3
  end

  def kind
    notTriangle1 = @side2 + @side3 - @side1
    notTriangle2 = @side1 + @side3 - @side2
    notTriangle3 = @side1 + @side2 - @side3

    if notTriangle1 <= 0 || notTriangle2 <= 0 || notTriangle3 <= 0 || @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError, "This is not a valid triangle!"
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end