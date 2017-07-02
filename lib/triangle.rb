class Triangle
  attr_accessor :a, :b, :c

  def initialize(side_1, side_2, side_3)
    @a = side_1
    @b = side_2
    @c = side_3
  end

  def valid?
    triangle_inequality = a + b > c && b + c > a && c + a > b
    not_zero = a > 0 && b > 0 && c > 0
    triangle_inequality && not_zero ? true : false
  end

  def equilateral?
    a == b && b == c
  end

  def isosceles?
    sides = [a, b, c]
    sides.uniq.length == 2
  end

  def scalene?
    a != b && b != c
  end

  def kind
    if !self.valid?
      raise TriangleError
    elsif self.valid? && self.equilateral?
      :equilateral
    elsif self.valid? && self.isosceles?
      :isosceles
    elsif self.valid? && self.scalene?
      :scalene
    end
  end

end

class TriangleError < StandardError
end
