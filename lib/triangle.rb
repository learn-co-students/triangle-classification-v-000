class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sides = [self.a, self.b, self.c].sort

    if sides[0] + sides[1] <= sides[2] || sides[0] <= 0
      raise TriangleError
    elsif sides[0] == sides[2]
      :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      :isosceles
    else
      :scalene
    end

    # # This is a more direct way, but way less elegant
    # if self.a + self.b <= self.c || self.b + self.c <= self.a || self.c + self.a <= self.b || [self.a, self.b, self.c].detect {|val| val <= 0}
    #   raise TriangleError
    # elsif self.a == self.b && self.b == self.c
    #   # all sides are equal, self.a == self.c is implied
    #   :equilateral
    # elsif self.a == self.b || self.b == self.c || self.a == self.c
    #   # only two sides are equal (skipping the previous condition implies the
    #   # last side is not)
    #   :isosceles
    # else
    #   :scalene
    # end
  end
end

class TriangleError < StandardError
  def message
    "Not a real triangle!"
  end
end
