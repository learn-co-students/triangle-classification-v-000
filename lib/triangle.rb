class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    if self.a + self.b <= self.c || self.a + self.c <= self.b || self.b + self.c <= self.a || self.b + self.c + self.a <= 0
      raise TriangleError
    elsif [self.a,self.b,self.c].uniq.size == 1
      :equilateral
    elsif [self.a,self.b,self.c].uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end
end
class TriangleError < StandardError
  def message
    "Shape does not meet spatial requirements to be a triangle"
  end
end
