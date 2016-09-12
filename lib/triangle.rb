class Triangle
  # write code here
  attr_reader :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <= 0 || @two <= 0 || @three <= 0
      raise TriangleError
    elsif @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
      raise TriangleError
    elsif @one == @two && @two == @three
      :equilateral
    elsif @one == @two || @one == @three || @two == @three
      :isosceles
    else
      :scalene
    end
  end


end

class TriangleError < StandardError
 # triangle error code
end
