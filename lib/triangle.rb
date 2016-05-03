require 'pry'

class Triangle

attr_accessor :side_one,:side_two,:side_three

def initialize(side_one, side_two, side_three)
  @side_one = side_one
  @side_two = side_two
  @side_three = side_three
end


def kind
 if side_one <= 0 || side_two <= 0 || side_three <= 0 || side_one + side_two <= side_three || side_one + side_three <=side_two || side_two + side_three <= side_one
  begin
    raise TriangleError
  
  end

 elsif side_one == side_two && side_one == side_three
  return :equilateral
elsif side_two == side_three || side_one == side_two || side_one == side_three
  return :isosceles
elsif side_one != side_two && side_one != side_three && side_two != side_three
  return :scalene
end
end
end


class TriangleError < StandardError
 


end

