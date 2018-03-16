class Triangle
  # write code here

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if !self.valid?
      raise TriangleError
    end
    if side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one != side_two && side_two != side_three && side_three != side_one
      :scalene
    else
      :isosceles
    end
  end

  def valid?
    if (side_one + side_two > side_three && side_one + side_three > side_two && side_three + side_two > side_one) && (side_one > 0 && side_two > 0 && side_three > 0)
      true
    else
      false
    end
  end
end


class TriangleError < StandardError
end
