class Triangle

attr_accessor :side1, :side2, :side3

def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

def kind
  @sides = [@side1, @side2, @side3]
  if @sides.any? {|side| side <= 0 } or @side1 + @side2 <= @side3 or @side1 + @side3 <= @side2 or @side2 + @side3 <= @side1
  # if @side1 + @side2 <= @side3
    raise TriangleError
  elsif @side1 == @side2 && @side2 == @side3
    :equilateral
  elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
    :isosceles
  else
    :scalene
  end
end

end

class TriangleError < StandardError

end
