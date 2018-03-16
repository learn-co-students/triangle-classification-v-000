class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if (side_one + side_two <= side_three) || (side_one + side_three <= side_two) || (side_two + side_three <= side_one)
      raise TriangleError
    elsif side_one == side_two && side_one == side_three
      return :equilateral
    elsif (side_one == side_two && side_one != side_three) || (side_one == side_three && side_one != side_two) || (side_two == side_three && side_two != side_one)
      return :isosceles
    else
      return :scalene
    end
  end

end

class TriangleError < StandardError

end
