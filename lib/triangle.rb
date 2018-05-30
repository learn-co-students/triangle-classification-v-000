class Triangle
  attr_reader :kind
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @kind = find_kind(@side_one, @side_two, @side_three)
  end

  def find_kind(side_one, side_two, side_three)
    if side_one <= 0 || side_two <= 0 || side_three <= 0
      raise TriangleError
    elsif side_one + side_two <= side_three
      raise TriangleError
    elsif side_one + side_three <= side_two
      raise TriangleError
    elsif side_two + side_three <= side_one
      raise TriangleError
    end

    if side_one == side_two && side_one == side_three
      :equilateral
    elsif side_one == side_two || side_two == side_three || side_one == side_three
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
