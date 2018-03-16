class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    self.side_1 = side_1
    self.side_2 = side_2
    self.side_3 = side_3
  end

  def kind
    # errors
    if self.side_1 <= 0 || self.side_2 <= 0 || self.side_3 <= 0
      raise TriangleError
    elsif is_inequality?
      raise TriangleError
    end

    # kind
    if self.side_1 == self.side_2 && self.side_2 == self.side_3
      :equilateral
    elsif is_isosceles?
      :isosceles
    else
      :scalene
    end
  end

  def is_isosceles?
    self.side_1 == self.side_2 && self.side_3 != self.side_1 ||
    self.side_2 == self.side_3 && self.side_1 != self.side_3 ||
    self.side_1 == self.side_3 && self.side_1 != self.side_2
  end

  def is_inequality?
    self.side_1 + self.side_2 <= self.side_3 ||
    self.side_1 + self.side_3 <= self.side_2 ||
    self.side_2 + self.side_3 <= self.side_1
  end
end

class TriangleError < StandardError
  "Some kind of error"
end