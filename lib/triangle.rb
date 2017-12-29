require 'pry'

class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <= 0 || @two <= 0 || @three <= 0 || @one+@two <= @three || @one+@three <= @two || @three+@two <= @one
      raise TriangleError
    elsif @one == @two && @two == @three
      :equilateral
    elsif @one == @two || @two == @three || @one == @three
      :isosceles
    elsif @one != @two && @two != @three && @one != @three
      :scalene
    else

    end
  end

end

class TriangleError < StandardError
  def message
    "that is not a triangle!"
  end 
end
