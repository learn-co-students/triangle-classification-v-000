class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize (side1,side2,side3)
    @side_1 = side1
    @side_2 = side2
    @side_3 = side3
  end

  def equilateral?
    self.side_1 == self.side_2 && self.side_2 == self.side_3
  end

  def isosceles?
    self.side_1 == self.side_2 || self.side_1 == self.side_3 || self.side_2 == self.side_3
  end

  def scalene?
    self.side_1 != self.side_2 && self.side_1 != self.side_3 && self.side_2 != self.side_3
  end

  def has_size?
    self.side_1 > 0 && self.side_2 > 0 && self.side_3 > 0
  end

  def triangle_inequality?
    self.side_1 + self.side_2 > self.side_3 && self.side_1 + self.side_3 > self.side_2 && self.side_2 + self.side_3 > self.side_1
  end

  def error_message
      raise TriangleError
  end

  def kind
    if triangle_inequality? && has_size?
      if equilateral?
        :equilateral
      elsif isosceles?
        :isosceles
      elsif scalene?
        :scalene
      end
    else
      error_message
    end
  end

end

class TriangleError < StandardError
end
