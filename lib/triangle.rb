require 'pry'
class Triangle
  # write code here
  def initialize(side_1, side_2, side_3)
    if side_1 == 0 || side_2 == 0 || side_3 == 0
      raise TriangleError
    elsif side_1 < 0 || side_2 < 0 || side_3 < 0
      raise TriangleError
    elsif (side_1 + side_2) <= side_3 || 
          (side_1 + side_3) <= side_2 || 
          (side_2 + side_3) <= side_1
      raise TriangleError
    else
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end
  end
  
  def kind
    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 && @side_1 != @side_3 ||
          @side_1 == @side_3 && @side_1 != @side_2 ||
          @side_2 == @side_3 && @side_2 != @side_1
      :isosceles
    elsif @side1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message 
    "Triangles with no size are illegal. Triangles with negative sides are illegal. Triangles violating triangle inequality are illegal."
    end
  end
end
