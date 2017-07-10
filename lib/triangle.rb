class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if !valid_triangle?
      raise TriangleError
    else
      if self.side1 != self.side2 && self.side2 != self.side3 && self.side3 != self.side1
        :scalene
      elsif self.side1 == self.side2 && self.side2 == self.side3 && self.side3 == self.side1
        :equilateral
      else
        :isosceles
      end

    end

  end

  def valid_triangle?
    self.side1 > 0 && self.side2 > 0 && self.side3 > 0 &&
    self.side1 + self.side2 > self.side3 &&
    self.side2 + self.side3 > self.side1 &&
    self.side3 + self.side1 > self.side2
  end
end

class TriangleError < StandardError
end
