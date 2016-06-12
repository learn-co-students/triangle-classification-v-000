class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one=side_one
    @side_two=side_two
    @side_three=side_three
  end

  def kind
    if self.valid?
      self.find_kind
    else
      raise TriangleError
    end
  end

  def valid?
    return false unless self.side_one > 0 && self.side_two > 0 && self.side_three > 0
    return false unless self.side_one + self.side_two > self.side_three
    return false unless self.side_one + self.side_three > self.side_two
    return false unless self.side_three + self.side_two > self.side_one
    true
  end

  def find_kind
    return :equilateral if self.side_one == self.side_two && self.side_two == self.side_three
    return :isosceles if self.side_one == self.side_two || self.side_one == self.side_three || self.side_two == self.side_three
    :scalene
  end
end

class TriangleError < StandardError
 # triangle error code
end
