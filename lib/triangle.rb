class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
      @one = one
      @two = two
      @three = three
  end

  def kind
    #test validity
    if !self.true_triangle?
      raise TriangleError
    elsif @one == @two && @two == @three && @one == @three
      :equilateral
    elsif @one == @two || @two == @three || @three == @one
      :isosceles
    else
      :scalene
    end
  end

  def true_triangle?
    if (@one > 0 && @two > 0 && @three > 0) &&
      (@one + @two > @three && @two + @three > @one && @one + @three > @two)
      true
    else
      false
    end
  end


end


class TriangleError < StandardError
end
