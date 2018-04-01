require 'pry'

class Triangle

  attr_accessor :kind

  def initialize(first, second, third)
    @sides = []
    @sides += [first, second, third]
    @sides.sort!
  end

  def kind
    if @sides[0] + @sides[1] <= @sides[2] || @sides.detect{|x| x <= 0}
      raise TriangleError
    elsif @sides[0] == @sides[1] && @sides[0] == @sides[2]
      @kind = :equilateral
    elsif @sides.uniq.size < @sides.size
      @kind = :isosceles
    else
      @kind = :scalene
    end
    @kind
  end

  class TriangleError < StandardError
  end

end
