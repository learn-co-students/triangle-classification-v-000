
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
#    if a == b && b == c
#      :equilateral
#    elsif a == b && b !=c || b == c && c != a || c == a && a != b
#      :isosceles
#    elsif a != b && b != c && c != a
#      :scalene

    raise TriangleError if [a,b,c].min <= 0
    x, y, z = [a,b,c].sort
    raise TriangleError if x + y <= z
    [:equilateral,:isosceles,:scalene].fetch([a,b,c].uniq.size - 1)

#    raise TriangleError if [a,b,c].min <= 0
#    x, y, z = [a,b,c].sort
#    raise TriangleError if x + y <= z
#    [:equilateral,:isosceles,:scalene].fetch([a,b,c].uniq.size - 1)
  end
end

class TriangleError < StandardError
end
