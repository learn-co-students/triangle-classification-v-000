class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  # triangle logic - sides can't be less than 0 or negative and any two sides added together cant be equal or less than the remaining side.

  def kind
    # if a <= 0 || b <= 0 || c <= 0 || a + b <= c || b + c <= a || c + a <= b
    if [a, b, c].any? == 0 || (a + b <= c || b + c <= a || c + a <= b)
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a != b && b != c && c != a
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "triangle is invalid"
    end
  end
end
