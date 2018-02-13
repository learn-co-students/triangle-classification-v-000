class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if !valid_triangle
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end
  end
  
  def valid_triangle
    a + b > c && a + c > b && b + c > a
  end
  
end

class TriangleError < StandardError
end