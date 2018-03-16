require 'pry'
class Triangle
  # write code here

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 == 0 && @length2 == 0 && @length3 == 0
      raise TriangleError
    elsif @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      raise TriangleError
    elsif @length1 + @length2 < @length3
      raise TriangleError
    elsif @length1 + @length3 <= @length2
      raise TriangleError
    elsif @length2 + @length3 < @length1
      raise TriangleError
    elsif @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 != @length2 && @length2 == @length3
      :isosceles
    elsif @length1 == @length3
      :isosceles
    elsif @length1 == @length2
      :isosceles
    elsif @length1 != @length2 && @length2 != @length3
      :scalene
    end
  end

end

class TriangleError < StandardError
 # triangle error code
 # def initialize(message)
 #  # Call the parent's constructor to set the message
 #  super(message)
 # end

end
