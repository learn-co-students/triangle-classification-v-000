class Triangle
  attr_accessor :a, :b, :c


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end# of initialize


  def kind
    if a <= 0 || b <=0 || c <=0
      raise TriangleError
    elsif a+b <= c || a+c <= b || b+c <= a
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    elsif a != b && b != c
      :scalene
    end# of if
  end# of kind

end# of Triangle

class TriangleError < StandardError
  "The triangle is invalid."
end# of TriangleError
