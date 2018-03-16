class Triangle

  attr_accessor :left, :right, :bottom, :sides
  
  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
    @sides = [left, right, bottom]
  end

  def kind
    self.sides.sort!
    if self.sides.all? {|x| x == 0}
      raise TriangleError
    elsif self.sides.any? {|x| x < 0}
      raise TriangleError
    elsif self.sides[0] + self.sides[1] <= self.sides[2]
      raise TriangleError
    elsif self.sides[0] != self.sides[1] && self.sides[0] != self.sides[2] && self.sides[2] != self.sides[1]
      :scalene
    elsif self.sides.all? {|side| side == self.sides[0]}
      :equilateral
    elsif (self.sides[0] == self.sides[1] || self.sides[0] == self.sides[2]) || (self.sides[2] == self.sides[1] || self.sides[2] == self.sides[0])
      :isosceles
    end
  end
end

class TriangleError < StandardError
end