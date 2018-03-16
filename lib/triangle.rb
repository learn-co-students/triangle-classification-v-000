class Triangle
  attr_accessor :sides

  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
  end

  def kind
    raise TriangleError if self.sides.any? { |a| a <= 0 }
    3.times do |a|
      if self.sides[a] + self.sides[(a + 1) % 3] <= self.sides[(a + 2) % 3]
        raise TriangleError
      end
    end

    if self.sides[0] == self.sides[1] && self.sides[1] == self.sides[2]
      return :equilateral
    elsif self.sides[0] == self.sides[1] || self.sides[1] == self.sides[2] || self.sides[0] == self.sides[2]
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  "A triangle cannot have a side of size 0 or two sides whose sum is less than the third."
end
