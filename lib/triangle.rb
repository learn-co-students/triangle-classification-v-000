# Triangle
#   knows that equilateral triangles have equal sides
#   knows that larger equilateral triangles also have equal sides
#   knows that isosceles triangles have last two sides equal
#   knows that isosceles triangles have first and last sides equal
#   knows that isosceles triangles have two first sides equal
#   knows that isosceles triangles have in fact exactly two sides equal
#   knows that scalene triangles have no equal sides
#   knows that scalene triangles have no equal sides at a larger scale too
#   knows that scalene triangles have no equal sides in descending order either
#   knows that very small triangles are legal
#   knows that triangles with no size are illegal
#   knows that triangles with negative sides are illegal
#   knows that triangles violating triangle inequality are illegal
#   knows that triangles violating triangle inequality are illegal 2
#   knows that triangles violating triangle inequality are illegal 3

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0 || (a + b) <= c || (b + c) <= a || (a + c) <= b
      raise TriangleError
    elsif a == b && a == c && b == c
      return :equilateral
    elsif a == b && b != c
      return :isosceles
    elsif a == c && a != b
      return :isosceles
    elsif b == c && c != a
      return :isosceles
    else
      return :scalene
    end
  end
#
#
#
#
end

class TriangleError < StandardError
#
#
#
#
end
