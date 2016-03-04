class Triangle
  # write code here
  attr_accessor :one, :two, :three, :equilateral, :isosceles

  def initialize(one,two,three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if (@one + @two) <= @three || (@one + @three) <= @two || (@two + @three) <= @one || @one <= 0 || @two <= 0 || @three <= 0
      raise TriangleError
    else
      if @one == @two && @one == @three && @two == @three
        :equilateral
      elsif @one == @two && @one != @three && @two != @three
        :isosceles
      elsif @two == @three && @two != @one && @three != @one
        :isosceles
      elsif @three == @one && @three != @two && @one != @two
        :isosceles
      else @one != @two && @one != @three && @two != @three
        :scalene
      end  
    end
  end
end

class TriangleError < StandardError
end