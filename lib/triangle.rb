require 'pry'

class Triangle

  attr_accessor :one, :two, :three
  # write code here
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    # binding.pry
    if @one <= 0 || @two <= 0 || @three <= 0
      begin
        raise TriangleError
      end
    elsif @one == nil || @two == nil || @three == nil
      begin
        raise TriangleError
      end
    elsif @one + @two <= @three || @two + @three <= @one || @one + @three <= @two
      begin
        raise TriangleError
      end
    elsif @one == @two && @one == @three
      :equilateral
    elsif @one == @two || @one == @three || @three == @two
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    puts "Triangle Error"
  end
end
