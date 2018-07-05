class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    if tri_invalid
      raise TriangleError
    elsif self.side1 == self.side2 && self.side1 == self.side3
      return :equilateral
    elsif (self.side1 == self.side2 && self.side1 != self.side3) || (self.side2 == self.side3 && self.side2 != self.side1) || (self.side1 == self.side3 && self.side1 != self.side2)
      return :isosceles
    else
      return :scalene
    end
  end
  def tri_invalid
    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
      return true
    elsif self.side1 + self.side2 <= self.side3
      return true
    elsif self.side2 + self.side3 <= self.side1
      return true
    elsif self.side1 + self.side3 <= self.side2
      return true
    else
      return false
    end
  end
  class TriangleError < StandardError
    puts "Invalid Triangle"
  end
end
