require 'pry'
class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if !validTriangle?
      begin
        raise TriangleError
      end
    else
      if @length1 == @length2 && @length2 == @length3
        :equilateral
      elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
        :isosceles
      else
        :scalene
      end
    end
  end

  def validTriangle?
    (@length1 > 0 && @length2 > 0 && @length3 > 0) && ((@length1 + @length2) > @length3) && ((@length1 + @length3) > @length2) && ((@length2 + @length3) > @length1)
  end
end

class TriangleError < StandardError
end
