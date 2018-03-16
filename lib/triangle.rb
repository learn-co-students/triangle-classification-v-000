require 'pry'
class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    @sides = []
    @a = a
    @b = b
    @c = c
    @sides << a
    @sides << b
    @sides << c
  end
  
  def kind
    if @sides.uniq.length == 1 && @a > 0
      @kind = :equilateral
    elsif @sides.uniq.length == 2 && @sides.count{|x| x < 0 } == 0 && @sides.sort[0] + @sides.sort[1] > @sides.sort[2]
      @kind = :isosceles
    elsif @sides.uniq.length == 3 && @sides.count{|x| x < 0 } == 0 && @sides.sort[0] + @sides.sort[1] > @sides.sort[2]
      @kind = :scalene
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end

