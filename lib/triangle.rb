# lib/triangle.rb

class Triangle
attr_accessor :side1, :side2, :side3

def initialize (side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

def kind
  if !valid_triangle?
    raise TriangleError
  elsif @side1 ==@side2 && @side2 ==@side3
    :equilateral
  elsif @side1 !=@side2 && @side2 !=@side3 && @side1 != @side3
    :scalene
  else
    :isosceles
  end
end

def valid_triangle?
  if @side1 <= 0 || @side2 <= 0 || @side3 <=0
    false
  elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
    false
  else
    true
  end
end

end

class TriangleError < StandardError
 # triangle error code
end
