require 'pry'

class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind

    if !valid?
        # binding.pry #I reach here
        raise TriangleError   #but this doesn't seem to execute
    end
    if (@one == @two) && (@two == @three)
      :equilateral
    elsif (@one != @two) && (@one != @three) && (@two != @three)
      :scalene
    elsif (@one == @two) || (@one == @three) || (@two == @three)
      :isosceles
    end
  end

  def valid?
    if @one <= 0 || @two <=0 || @three <= 0
      return false

    elsif @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
      false
    else true
    end
  end
end


class TriangleError < StandardError

  def message
    "not a valid triangle."
  end
end
