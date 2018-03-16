class Triangle

  attr_reader :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if ((self.length_1 + self.length_2 <= self.length_3) || (self.length_2 + self.length_3 <= self.length_1) || (self.length_1 + self.length_3 <= self.length_2)) || (self.length_1 < 0 || self.length_2 < 0 || self.length_3 < 0)
      raise TriangleError
    elsif (self.length_1 != self.length_2) && (self.length_1 != self.length_3) && (self.length_2 != self.length_3)
      :scalene
    elsif (self.length_1 == self.length_2) && ((self.length_1 != self.length_3) && (self.length_2 != self.length_3)) || (self.length_1 == self.length_3) && ((self.length_1 != self.length_2) && (self.length_3 != self.length_2)) || (self.length_2 == self.length_3) && ((self.length_2 != self.length_1) && (self.length_3 != self.length_1))
      :isosceles
    elsif self.length_1 == (self.length_2 && self.length_3)
      :equilateral
    else
    end
  end

end

class TriangleError < StandardError

end
