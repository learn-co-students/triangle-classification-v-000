class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides

  def initialize(side_1, side_2, side_3)
    @side_1, @side_2, @side_3 = side_1, side_2, side_3
    self.sides = []
    self.sides << self.side_1 << self.side_2 << self.side_3
  end

  def kind
    if !(self.valid_triangle?)
      raise TriangleError
    elsif self.sides.uniq.length == 1
      :equilateral
    elsif self.sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    if self.sides.any? { |side| side <= 0 } || !(self.triangle_inequality?)
      false
    else
      true
    end
  end

  def triangle_inequality?
    (self.side_1 + self.side_2 > self.side_3) &&
    (self.side_2 + self.side_3 > self.side_1) &&
    (self.side_3 + self.side_1 > self.side_2)
  end

end

class TriangleError < StandardError
  def message
    "invalid triangle input"
  end
end
