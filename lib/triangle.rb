class Triangle

attr_accessor :side_one, :side_two, :side_three

def initialize (side_one, side_two, side_three)
  @side_one = side_one
  @side_two = side_two
  @side_three = side_three
end

def kind
  invalid
  if side_one == side_two && side_two == side_three
    :equilateral
  elsif side_one == side_two || side_two == side_three || side_one == side_three
    :isosceles
  else
    :scalene
      end
  end
end

def invalid
if ((side_one || side_two || side_three) <= 0 || (side_one + side_two <= side_three || side_one + side_three <= side_two || side_two + side_three <= side_one))
      raise TriangleError
    end
end

class TriangleError < StandardError
end


