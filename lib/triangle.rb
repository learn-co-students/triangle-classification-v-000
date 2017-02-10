class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    if side1 > 0 && @side2 > 0 && @side3 > 0
      if (@side1 + @side2 > @side3) && (@side1 + @side3 > @side2) && (@side2 + @side3 > @side1)
        true
      else
        false
      end
    else
      false
    end
  end

  def equilateral?
    if @side3 == @side2 && @side2 == @side1
      true
    end
  end

  def isosceles?
    if (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side3 == @side2 && @side1 != @side3)
      true
    end
  end

  def scalene?
    if @side2 != @side1 && @side1 != @side3 && @side3 != @side2
      true
    end
  end

  def kind
    if valid? == true
      if equilateral? == true
        :equilateral
      elsif scalene? == true
        :scalene
      elsif isosceles? == true
        :isosceles
      end
    else
      raise TriangleError
      puts TriangleError.message
    end
  end
end

class TriangleError < StandardError
  def message
    "all sides must be > 0, and any 2 sides must be > 3rd side"
  end
end
