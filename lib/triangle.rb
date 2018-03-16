# * Write a `Triangle` class that accepts three arguments on initialization. Each argument is a length of one of
# the three sides of the triangle.
# * Give your Triangles an instance method, `kind` that returns, as a symbol, its type. The valid types are:
# 1. `:equilateral`
# 2. `:isosceles`
# 3. `:scalene`

# Triangle knows that equilateral triangles have equal sides
# Triangle knows that larger equilateral triangles also have equal sides
# Triangle knows that isosceles triangles have last two sides equal
# Triangle knows that isosceles triangles have first and last sides equal
# Triangle knows that isosceles triangles have two first sides equal
# Triangle knows that isosceles triangles have in fact exactly two sides equal
# Triangle knows that scalene triangles have no equal sides
# Triangle knows that scalene triangles have no equal sides at a larger scale too
# Triangle knows that scalene triangles have no equal sides in descending order either
# Triangle knows that triangles violating triangle inequality are illegal
# Triangle knows that triangles violating triangle inequality are illegal 2
# Triangle knows that triangles violating triangle inequality are illegal 3
# The third important property of triangles is the triangle inequality rule, which states: the length of a side of a triangle
# is less than the sum of the lengths of the other two sides and greater than the difference of the lengths of the other two sides.

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def kind
    if triangle? == false || positive? == false
      raise TriangleError
    elsif @sides.count(a) == 3
      :equilateral
    elsif @sides.count(a) == 2 || @sides.count(b) == 2 || @sides.count(c) == 2
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    (a + b) > c && (a + c) > b && (b + c) > a
  end

  def positive?
    true unless @sides.any?{|n| n <= 0}
  end
end

# Triangle knows that triangles with no size are illegal
# Triangle knows that triangles with negative sides are illegal
class TriangleError < StandardError
  def message
    "Triangles cannot have lengths that are negative or equal to zero."
  end
end
