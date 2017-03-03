class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    @a, @b, @c = [a, b, c].sort
    if a <= 0 or a + b <= c
      raise TriangleError
    elsif @a == @b && @b == @c && @a == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end
end
class TriangleError < StandardError
 # triangle error code
#  def message
#      "this is not a valid triangle"
#    end
end
