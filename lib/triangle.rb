class Triangle
  attr_accessor :a, :b, :c
  attr_reader :kind

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    if a <= 0 || b <= 0 || c <= 0 || c >= (b+a) || b >= (c+a) || a >= (b+c)
      raise TriangleError
    elsif a == b && b == c
      @kind = :equilateral
    elsif (a != b && b == c) || (c != b && b == a) || (a != b && a == c)
      @kind = :isosceles
    elsif (a != b && b != c)
      @kind = :scalene
    end
  end
end

class TriangleError < StandardError
end