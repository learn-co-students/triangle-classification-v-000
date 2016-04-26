class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !valid_triangle?
      raise TriangleError
    elsif a == b && a == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    elsif a != b && a != c && b != c
      :scalene
    end
  end
      
  def valid_triangle?
    ((a + b > c ) && (b + c > a) && (a + c > b)) && ((a > 0) && (b > 0) && (c > 0))
  end

end

class TriangleError < StandardError
end
