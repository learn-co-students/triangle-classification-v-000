class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_tri?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid_tri?
    real_tri = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_tri << false if s <= 0 }
    raise TriangleError if real_tri.include?(false)
  end

  class TriangleError < StandardError
  end
end
