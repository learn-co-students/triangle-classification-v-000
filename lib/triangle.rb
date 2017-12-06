class Triangle
  # write code here

  def initialize(side1,side2,side3)
    @sides = [side1, side2, side3]
  end

  def kind
    if triangle_valid?(@sides)
      if @sides[0] == @sides[1] && @sides[1] == @sides[2]
        :equilateral
      elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[0] == @sides[2]
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def triangle_valid?(sides)
    if @sides.all? { | side | side > 0 } &&
      ( @sides[0] + @sides[1] > @sides[2] ) &&
      ( @sides[0] + @sides[2] > @sides[1] ) &&
      ( @sides[1] + @sides[2] > @sides[0] )
      true
    end
  end
end

class TriangleError < StandardError
  def message
    "This is not a valid triangle"
  end
end
