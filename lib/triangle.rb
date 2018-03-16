class Triangle
  attr_accessor :kind, :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if self.side_one <= 0 || self.side_two <= 0 || self.side_three <= 0
      raise TriangleError
    elsif self.side_one + self.side_two <= self.side_three || self.side_one + self.side_three <= self.side_two || self.side_two + self.side_three <= self.side_one
      raise TriangleError
    else
      if self.side_one == self.side_two && self.side_one == self.side_three
        :equilateral
      elsif self.side_one == self.side_two || self.side_one == self.side_three || self.side_two == self.side_three
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  "error!"
end
