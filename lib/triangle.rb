require 'pry'

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = []
    @sides << @a
    @sides << @b
    @sides << @c
  end

  def kind
    confirm_triangle
    if @a == @b && @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  def confirm_triangle
    raise TriangleError unless @sides.sort[2] < (@sides.sort[0] + @sides.sort[1]) && @sides.none?{|side| side <= 0}
  end

end



class TriangleError < StandardError;end
