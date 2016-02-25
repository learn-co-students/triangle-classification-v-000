require 'pry'

class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
  end

  def invalid_triangle
    if @sides.any? {|side| side == 0}
      true
    elsif @sides.any? {|side| side < 0}
      true
    elsif @sides[0] + @sides[1] <= @sides[2]
      true
    elsif @sides[0] + @sides[2] <= @sides[1]
      true
    elsif @sides[1] + @sides[2] <= @sides[0]
      true
    end
  end

  def kind
    if invalid_triangle
      raise TriangleError
    elsif @sides[0] == @sides[1] && @sides[1] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[0] == @sides[2] 
      :isosceles
    else 
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Triangle is invalid."
  end
end