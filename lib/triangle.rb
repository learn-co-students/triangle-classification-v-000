class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three

  def initialize (side_one, side_two, side_three)
    sides = [side_one, side_two, side_three].sort
    if side_one <= 0 || side_two <= 0 || side_three <= 0
     begin
        raise TriangleError
      end
    elsif sides[0] + sides[1] <= sides[2]
      begin
        raise TriangleError
      end
    else
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
    end
  end

  def kind
    if self.side_one == self.side_two && self.side_one == self.side_three
      :equilateral
    elsif self.side_one == self.side_two || self.side_one == self.side_three || self.side_two == self.side_three
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "Triangle Error!"
  end
end
