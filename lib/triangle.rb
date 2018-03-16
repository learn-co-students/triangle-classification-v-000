require 'pry'

class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = []
    @sides.push(side_1, side_2, side_3)
  end

  def triangle_inequality?
    self.sides.max >= self.sides.min(2).inject(:+)
  end

  def equilateral?
    @side_1 == @side_2 && @side_1 == @side_3
  end

  def isosceles?
    @side_2 == @side_3 || @side_1 == @side_3 || @side_1 == @side_2
  end

  def scalene?
    @side1 != @side_2 && @side1 != @side_3 && @side_2 != @side_3
  end

  def valid?
    if self.sides.any? { |side| side <= 0} || self.triangle_inequality?
      raise TriangleError
    end
  end

  def kind
    self.valid?
    if self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    end
  end

end

class TriangleError < StandardError

end
