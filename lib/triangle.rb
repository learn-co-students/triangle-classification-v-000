# class Triangle
#
#   attr_accessor :length1, :length2, :length3
#
#   def initialize(length1, length2, length3)
#     @length1 = length1
#     @length2 = length2
#     @length3 = length3
#   end
#
#   def kind
#     if length1 < 0 || length2 < 0 || length3 < 0
#       raise TriangleError
#     elsif length1+length2 <= length3 || length1+length3 <= length2 || length2+length3 <= length1
#       raise TriangleError
#     elsif length1 == length2 && length2 == length3 && length1 != 0
#       :equilateral
#     elsif length1 == length2 && length1 != 0 || length2 == length3 && length1 != 0 || length1 == length3 && length1 != 0
#       :isosceles
#     elsif length1 != length2 && length2 != length3 && length1 != length3
#       :scalene
#     else
#       raise TriangleError
#     end
#   end
#
# end
#
# class TriangleError < StandardError
#   def message
#     "NO GOOD Triangle"
#   end
# end
#
#
# LEARN SOLUTION


class Triangle
  attr_reader :a, :b, :c
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
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
