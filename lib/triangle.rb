class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if valid?(a, b, c)
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  
  def valid?(a, b ,c)
    a + b > c && c + b > a && a + c > b && a > 0 && b > 0 && c > 0
  end
  
  class TriangleError < StandardError
  end
end
