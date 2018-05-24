class Triangle
  def initialize(one, two, three)
    if  one <= 0 || two <= 0 || three <= 0
      raise TriangleError
    end

    if one + two <= three || one + three <= two || two + three <= one
      raise TriangleError
    end

    @side_one = one
    @side_two = two
    @side_three = three
  end

  def kind
    if @side_one == @side_two && @side_two == @side_three
      return :equilateral
    elsif @side_two == @side_three ||
          @side_one == @side_three ||
          @side_one == @side_two
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Your triangle is invalid!"
    end
  end
end
