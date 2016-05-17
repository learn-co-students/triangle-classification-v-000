class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    if @side1 > 0 && @side2 > 0 && @side3 > 0
      if (@side1 + @side2 > @side3) && (@side1 + @side3 > @side2) && (@side2 + @side3 > @side1)
        #sum of 2 sides > 3rd side
        true
      else
        false
      end
    else
      false
    end
    #all sides > 0, sum of 2 sides > 3rd side
  end

  def equilateral?
    if @side3 == @side2 && @side2 == @side1
      true #3 equal sides
    end
  end

  def isosceles?
    if (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side3 == @side2 && @side1 != @side3)
      true #2 equal sides
    end
  end

  def scalene?
    if @side2 != @side1 && @side1 != @side3 && @side3 != @side2
      true #unequal sides
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

