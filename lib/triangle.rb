require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
    if self.sides.any? { |s| s <= 0 } || self.triangle_inequality?
      raise TriangleError
    end
  end

  def triangle_inequality?
    if self.side1 + self.side2 <= self.side3
      true
    elsif self.side1 + self.side3 <= self.side2
      true
    elsif self.side2 + self.side3 <= self.side1
      true
    else
      false
    end
  end

  def isosceles?
    if self.side1 == self.side2 && self.side1 != self.side3
      true
    elsif self.side1 == self.side3 && self.side1 != self.side2
      true
    elsif self.side2 == self.side3 && self.side2 != self.side1
      true
    else
      false
    end
  end


  def kind
    if self.side1 != self.side2 && self.side2 != self.side3 && self.side3 != self.side1
      :scalene
    elsif self.side1 == self.side2 && self.side2 == self.side3
      :equilateral
    elsif self.isosceles?
      :isosceles
    end
  end

  class TriangleError < StandardError

  end
end
