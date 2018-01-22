class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3, :hypotenuse, :a, :b
  
  def initialize(length1, length2, length3)
    @length3 = length3
    @length2 = length2
    @length1 = length1
    if (@length3 > @length2 && @length3 > @length1)
      @hypotenuse = length3
      @a = length1
      @b = length2
    elsif  (@length1 > @length2 && @length1 > @length3)
      @hypotenuse = length1
      @a = length3
      @b = length2
    else
      @hypotenuse = length2
      @a = length1
      @b = length3
    end
  end

  def kind 
    if ((@length1 > 0 && @length2 > 0 && @length3 > 0) && (@a + @b > @hypotenuse))
      if @length1 == @length2 && @length1 == @length3
      :equilateral
      elsif ((@length1 == @length2 && @length1 != @length3) || (@length1 == @length3 && @length1 != @length2) || (@length2 == @length3 && @length1 != @length2))
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end