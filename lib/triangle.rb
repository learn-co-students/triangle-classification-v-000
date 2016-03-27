class Triangle
  attr_accessor :one, :two, :three
  # write code here
  def initialize(one, two, three)
    @one=one
    @two=two
    @three=three
  end
  def kind
    if @one == 0 || @two== 0 || @three == 0 || @one + @two <= @three || @two + @three <= @one || @one + @three <= @two
        raise TriangleError
    end
    if @one == @two && @two == @three
      :equilateral
    elsif @one == @two || @two == @three || @one == @three
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
