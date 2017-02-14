class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if valid?
      if side_one == side_two && side_one == side_three
        return :equilateral
      elsif side_one == side_two || side_two == side_three || side_one == side_three
        return :isosceles
      else
        return :scalene
      end
    end

    raise TriangleError

  end

  def valid?
    (side_one > 0 && side_two > 0 && side_three > 0) && (side_one + side_two > side_three) && (side_two + side_three > side_one) && (side_one + side_three > side_two)
  end

end

class TriangleError < StandardError

  def message
    "This triangle is invalid"
  end

end
