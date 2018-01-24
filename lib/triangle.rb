class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    #define a real triangle by the possible side lengths
    real_triangle = [ (a + b > c), (a + c > b), (b + c > a)]
    #iterate of each side to determine the lengths and if it is a real triangle
    #sides must be greater than 0
    #raise TriangleError if a triangle has been evaluated to false.
    [a, b, c].each { |s| real_triangle << false if s <= 0}
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError

end
