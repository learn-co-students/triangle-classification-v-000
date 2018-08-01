class Triangle
  attr_accessor :a, :b, :c, :kind

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a + b + c) == 0 || (a + b) <= c || (b + c) <= a || (c + a) <= b
      begin
        raise TriangleError
      end

    elsif a == b && a == c
      self.kind = :equilateral

    elsif a == b || b == c || c == a
      self.kind = :isosceles

    else
      self.kind = :scalene
    end

  end

  class TriangleError < StandardError

  end
end
