class Triangle
  attr_reader :a, :b, :c, :sides
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @sides = [a,b,c]
  end

  def kind
    if sides.any? { |s| s <= 0 } || a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
