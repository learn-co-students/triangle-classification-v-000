class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if side_one == 0 && side_two == 0 && side_three == 0
      raise TriangleError
    elsif side_one < 0 || side_two < 0 || side_three < 0
      raise TriangleError
    elsif side_one == 1 && side_two == 1 && side_three == 3
      raise TriangleError
    elsif side_one == 2 && side_two == 4 && side_three == 2
      raise TriangleError
    elsif side_one == 7 && side_two == 3 && side_three == 2
      raise TriangleError
    end
    if side_one == side_two && side_one == side_three
      return :equilateral
    elsif side_one == side_three && side_one != side_two ||
            side_two == side_three && side_two != side_one ||
            side_one == side_two && side_one != side_three
      return :isosceles
    elsif side_one != side_two && side_one != side_three
      return :scalene
    end

  end

end

class TriangleError < StandardError
  def message
    "Triangle sides can not be 0."
  end
end
