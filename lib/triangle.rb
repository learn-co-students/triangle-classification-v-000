class Triangle
  attr_reader :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    sides = [self.side_one, self.side_two, self.side_three]
    sides.sort!
    if sides.any? {|side| side <= 0} || sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif sides.all? {|side| side == sides[0]}
      :equilateral
    elsif sides[1] == sides[2]
      :isosceles
    elsif sides.uniq == sides
      :scalene
    end
  end
end

class TriangleError < StandardError

end
