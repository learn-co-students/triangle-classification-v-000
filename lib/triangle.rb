class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end

  def valid_triangle?
    if self.side1 + self.side2 > self.side3 && self.side1 + self.side3 > self.side2 && self.side2 + self.side3 > self.side1 && !@sides.include?(0)
      true
    else
      false
    end
  end

  def kind
    if self.valid_triangle?
      if self.side1 == self.side2 && self.side1 == self.side3
        :equilateral
      elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
        :isosceles
      else
        :scalene
      end
    else  
      raise TriangleError
    end


  end

end

class TriangleError < StandardError

end