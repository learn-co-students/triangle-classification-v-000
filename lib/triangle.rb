class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def type
    if @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side2 == @side3 && @side1 != @side2)
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 !=@side3
      :scalene
    else
      nil
    end
  end

  def triangle?
    (@side1 > 0 && @side2 > 0 && @side3 > 0) && (((@side1 + @side2) > @side3) && ((@side1 + @side3) > @side2) && ((@side2 + @side3) > @side1))
  end

  def kind
    if type && triangle?
      type
    else
      raise TriangleError
    end
  end


  class TriangleError < StandardError

  end

end
