class Triangle

  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def no_size
    self.a <= 0 || self.b <= 0 || self.c <= 0
  end

  def triangle_inequality
    self.a + self.b <= self.c || self.a + self.c <= self.b || self.b + self.c <= self.a
  end

  def kind
    if no_size || triangle_inequality
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
end