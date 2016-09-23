class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    triangle = [@side_one, @side_two, @side_three].sort
    side_one = triangle[0]
    side_two = triangle[1]
    side_three = triangle[2]

    if side_one <= 0 || side_two <= 0 || side_three <= 0
      begin
        raise TriangleError
      end
    elsif side_one >= side_two + side_three || side_two >= side_one + side_three || side_three >= side_one + side_two
      begin
        raise TriangleError
      end
    elsif (side_one + side_two + side_three) == (side_one * 3)
      return :equilateral
    elsif side_two == side_three && side_one != side_two
      return :isosceles
    elsif side_one != side_two && side_two != side_three
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "That is not a valid triangle!"
  end
end
