class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

    def kind
      if self.side_one + self.side_two <= self.side_three || self.side_one + self.side_three <= self.side_two || self.side_two + self.side_three <= self.side_one
        raise TriangleError
      elsif self.side_one <= 0 || self.side_two <= 0 || self.side_three <= 0
        raise TriangleError
      elsif self.side_one == self.side_two && self.side_two == self.side_three
        :equilateral
      elsif self.side_one == self.side_two || self.side_one == self.side_three || self.side_two == self.side_three
        :isosceles
      elsif self.side_one != self.side_two && self.side_two != self.side_three && self.side_one != self.side_three
        :scalene
    end
  end
end


class TriangleError < StandardError
  def message
    "your triangle is invalid, please check your dimensions."
  end
end