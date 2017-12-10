class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle
    if a > 0 && b > 0 && c > 0 && ((a + b) > c && (a + c) > b && (b + c) > a)
      true
    else
      false
    end
  end

  def kind
    if valid_triangle  == false
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    elsif a != b && b != c && c != a
      :scalene
    end
  end
end


class TriangleError < StandardError
 # triangle error code
end
