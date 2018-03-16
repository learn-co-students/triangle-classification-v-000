#knows that equilateral triangles have equal sides
#knows that larger equilateral triangles also have equal sides
#knows that isosceles triangles have last two sides equal
#knows that isosceles triangles have first and last sides equal
#knows that isosceles triangles have two first sides equal
#knows that isosceles triangles have in fact exactly two sides equal
#knows that scalene triangles have no equal sides
#knows that scalene triangles have no equal sides at a larger scale too
#knows that scalene triangles have no equal sides in descending order either
#knows that very small triangles are legal
#knows that triangles with no size are illegal
#knows that triangles with negative sides are illegal
#knows that triangles violating triangle inequality are illegal
#knows that triangles violating triangle inequality are illegal 2
#knows that triangles violating triangle inequality are illegal 3


class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 || @side2<=0 || @side3 <= 0
      raise TriangleError
    elsif (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    elsif @side1 != @side2 || @side2 != @side3 || @side1 != @side3
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "error"
  end
end
