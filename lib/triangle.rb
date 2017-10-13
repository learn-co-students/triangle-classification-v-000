class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if valid? == false
        raise TriangleError
    end

    if @side1 == @side2 && @side2 == @side3 && @side1 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      return :scalene
    else
      return "nothing special"
    end
  end

  def valid?
    if !(@side1+@side2 > @side3) || !(@side2+@side3 > @side1) || !(@side1+@side3 > @side2) || @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      false
    else
      true
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
