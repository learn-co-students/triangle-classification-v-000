
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError if [a,b,c].min <= 0
    x, y, z = [a,b,c].sort
    raise TriangleError if x + y <= z
    [:equilateral,:isosceles,:scalene].fetch([a,b,c].uniq.size - 1)
   end
end

class TriangleError < StandardError
end
