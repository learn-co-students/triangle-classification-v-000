require 'pry'
class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    a, b, c = [@side1, @side2, @side3].sort
    if a <= 0 || (a + b) <= c
      begin
        raise TriangleError
      end
    elsif a == b
      :equilateral
    elsif a == b || b == c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "This triangle is illegal!"
  end
end

