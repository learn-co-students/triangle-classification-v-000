class Triangle

  attr_accessor :a, :b, :c

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end



  def kind
    if  a + b <= c || b + c <= a || a + c <= b || a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a == b && b == c && c == a
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    elsif a != b && b != c && c != a
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
