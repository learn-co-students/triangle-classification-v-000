class Triangle
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
  @side1 = side1
    @side2 = side2
      @side3 = side3
  end

  def kind
    if_triangle
    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    else return :scalene
  end
else raise TriangleError
end


def if_triangle
if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
raise TriangleError
elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
  raise TriangleError
else return true
end
end

end

class TriangleError < StandardError
  def message
 return "This is not a triangle"
 end# triangle error code
end
