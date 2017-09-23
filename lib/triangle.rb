class Triangle
  # write code here

  attr_accessor :one, :two, :three, :type

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if one + two <= three || two + three <= one || one + three <= two || one <= 0 || two <= 0 || three <= 0
      raise TriangleError
    else
      if one == two && two == three
        :equilateral
      elsif one != two && two != three && one != three
        :scalene
      elsif one == two || two == three || one == three
        :isosceles
      end
    end
  end

end

class TriangleError < StandardError
end
