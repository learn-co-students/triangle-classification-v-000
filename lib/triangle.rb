class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    #triangle inequality
    if a + b > c && b + c > a && c + a > b && a > 0 && b > 0 && c > 0
      true
    else
      raise TriangleError
    end

    #   yes_triange << true
    # else
    #   yes_triangle << false
    # end
    # if yes_triangle.include(false)
    #   raise TriangleError
    # end
  end


end


class TriangleError < StandardError
  def message
    "the side dimensions given will not produce a triangle, either one of the sides is 0 or the dimensions do not meet the triangle inequality test"
  end
end
