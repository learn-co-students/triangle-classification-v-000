class Triangle
  attr_accessor :one, :two, :three

  def initialize(one = 0,two = 0,three = 0)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <=0 || @two <= 0 || @three <= 0
        raise TriangleError
      elsif (@one + @two) <= @three || (@two + @three) <= @one || (@one + @three) <= @two
        raise TriangleError
      elsif @one == @two && @one == @three
        :equilateral
      elsif @one != @two && @two != @three && @one != @three
        :scalene
      else
        :isosceles
    end
  end
end


class TriangleError < StandardError
  def message
    "Not a triangle!"
  end
end
