class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle?
    if a && b && c > 0.0 && a + b > c && a + c > b && b + c > a
    #a, b, c = [a, b, c].sort
    #if a <= 0.0 or a + b <= c
      return true
    else
      return false
      raise TriangleError
    end
  end

  def kind
   if valid_triangle?
    return :equilateral if a == b && a == c && b == c 
    return :isosceles if a == b || b == c || a == c
    return :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
