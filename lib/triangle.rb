class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0 || (@length1 + @length2 <= @length3) || (@length2 + @length3 <= @length1) || (@length1 + @length3 <= @length2)
      raise TriangleError
    else
      if @length1==@length2 and @length2==@length3
        :equilateral
      elsif @length1==@length2 or @length2==@length3 or @length1==@length3
        :isosceles
      else
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    def message
      "At least one triange side length is invalid. Please be sure all side lengths are greater than 0."
    end
  end
end
  
