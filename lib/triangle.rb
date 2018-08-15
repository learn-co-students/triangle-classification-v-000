class Triangle
  # write code here
  attr_accessor :a, :b, :c #sides

  def initialize(a,b,c) # init qith all equal sides
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle?
    if a && b && c > 0.0 && a + b > c && a + c > b && b + c > a
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
  class TriangleError < StandardError #standard error flag
  end
end
