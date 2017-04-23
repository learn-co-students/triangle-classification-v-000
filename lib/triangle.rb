class Triangle
  attr_accessor :type, :a, :b, :c

  @VALIDS = [:isosceles,:equilateral,:scalene]

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !valid
      raise TriangleError
    elsif self.a == self.b && self.b == self.c
      return :equilateral
    elsif self.a == self.b || self.b == self.c || self.a == self.c
      return :isosceles
    else
      return :scalene
    end
  end

  def valid
    if self.a <= 0 || self.b<=0 || self.c <= 0
      return false
    elsif self.a + self.b <= self.c
      return false
    elsif self.a + self.c <= self.b
      return false
    elsif self.b + self.c <= self.a
      return false
    else
      return true
    end
  end

end

class TriangleError < StandardError

end

abe = Triangle.new(2,3,4)
puts abe.kind
