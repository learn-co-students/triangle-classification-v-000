class Triangle
  # write code here
  attr_reader :sides
  
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort # Sorts the sides from shortest to longest
  end
  
  def kind 
    if invalid_triangle? 
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    else # By now, the sides must ALL have different lengths!
      :scalene
    end
  end
  
  def invalid_triangle?
    self.sides.any?{|side| side <= 0} || self.sides[0] + self.sides[1] <= self.sides[2]
    # Note that by sorting the sides, I only need to make ONE length comparison.
  end
  
  def equilateral?
    self.sides.all?{|side| side == sides[0]}
  end 
  
  def isosceles?
    self.sides[0] == self.sides[1] || self.sides[1] == self.sides[2]
    # I don't need to check for the third case because the sides are sorted by length.
    # @sides can be [1, 2, 2] or [2, 2, 3], but never [2, 1, 2], e.g.
  end
  
  class TriangleError < StandardError
    "It is impossible to make a triangle with these three side lengths."
  end
end
