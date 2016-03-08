class Triangle
attr_accessor :length_1, :length_2, :length_3

 def initialize(length_1, length_2, length_3)
  @length_1 = length_1
  @length_2 = length_2
  @length_3 = length_3
end

def kind
  if @length_3 <= 0 || @length_2 <= 0 || @length_1 <= 0
    raise TriangleError
  elsif @length_1 + @length_2 <= @length_3 || @length_1 + @length_3 <= @length_2 || @length_3 + @length_2 <= @length_1
    raise TriangleError
  elsif @length_2 == @length_1 && @length_2 == @length_3
    :equilateral
  elsif @length_1 != @length_2 && @length_1 != @length_3 && @length_3 != @length_2
    :scalene
  else
    :isosceles
  end
end
end

class TriangleError < StandardError
def message
  "Triangle Error"
end
  end