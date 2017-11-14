class Triangle
  def initialize(one, two, three)
    @sides = [one, two, three]
  end

  def sides
    @sides
  end

  def kind
    #raise errors first then determine triangle type if lengths = legal
    if self.sides[0] <= 0 || self.sides[1] <= 0 || self.sides[2] <= 0 #sides must be > 0
      raise TriangleError
    elsif self.sides[0] >= (self.sides[1] + self.sides[2]) || #illegal lengths
      self.sides[1] >= (self.sides[0] + self.sides[2]) ||
      self.sides[2] >= (self.sides[0] + self.sides[1])
      raise TriangleError
    elsif self.sides[0] == self.sides[1] && self.sides[0] == self.sides[2] #equilateral
      :equilateral
    elsif self.sides[0] == self.sides[1] && self.sides[0] != self.sides[2] ||
      self.sides[0] == self.sides[2] && self.sides[0] != self.sides[1] ||
      self.sides[1] == self.sides[2] && self.sides[1] != self.sides[0] #isosceles
      :isosceles
    elsif self.sides[0] != self.sides[1] && self.sides[0] != self.sides[2]
      :scalene
    else #if anything hasn't been considered throw error as safety net
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
