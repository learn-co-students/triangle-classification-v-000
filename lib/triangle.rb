class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one=one
    @two=two
    @three=three
  end

  def kind
    if one + two <= three || one + three <= two || two + three <= one || one <= 0 || two <= 0 || three <= 0
      raise TriangleError
    else
      if one == two && two == three
        :equilateral
      elsif (two == three && one != two) || (one == three && two != one) || (one == two && two != three)
        :isosceles
      elsif (one != two && one != three && two != three)
        :scalene
      end
    end
  end
  
end

class TriangleError < StandardError
end

