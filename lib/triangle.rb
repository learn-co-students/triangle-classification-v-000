class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate
    valid_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    valid_triangle.each do |check|
      if check == false
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end
end
