require 'pry'

class Triangle

  attr_accessor :length1, :length2, :length3
  # write code here
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @sides = []
    (@sides << [@length1, @length2, @length3]).flatten!
  end

  def kind
    #binding.pry
    if @sides.select {|side| side <= 0 } != [] || !inequality
      raise TriangleError
    else
      triangle_type
    end
  end

  def inequality
    @length1 + @length2 > @length3 && @length2 + @length3 > @length1 && @length1 + @length3 > @length2
  end

  def triangle_type
    if @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
      :isosceles
    else
      :scalene
   end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle Dimensions"
    end
  end


end
