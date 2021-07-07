class Triangle
  attr_accessor :side_one, :side_two, :side_three
  # write code here
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  class TriangleError < StandardError

  end

  def kind
    if side_one <= 0 || side_two <= 0 || side_three <= 0
        raise TriangleError
    elsif side_one + side_two <= side_three || side_two + side_three <= side_one || side_one + side_three <= side_two
        raise TriangleError
    elsif side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two || side_two == side_three || side_one == side_three
      :isosceles
    elsif side_one != side_two && side_two != side_three
      :scalene
    end

  end
end
