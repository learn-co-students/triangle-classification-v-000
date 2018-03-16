require 'pry'

class Triangle

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if ((@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)) && @side1 > 0 && @side2 > 0 && @side3 > 0
      if (@side1 == @side2) && (@side2 == @side3)
        :equilateral
      elsif (@side1 == @side2 && @side2 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side2 == @side3 && @side1 != @side2)
        :isosceles
      elsif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
        :scalene
      else
        "error"
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
  def message
    "Please enter valid triangle measurement!"
  end
end

binding.pry
