class Triangle
  # write code here
    attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sides = [self.a, self.b, self.c].sort
    if sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif sides[0] == sides[2]
      :equilateral
    elsif sides[0] != sides[1] && sides[1] != sides[2]
      :scalene
    else
      :isosceles
    end
  end

end

class TriangleError < StandardError
  def message
    "Not a real triangle!"
  end
end
