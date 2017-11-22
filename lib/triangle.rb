class TriangleError < StandardError
end

class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    if !valid? 
      raise TriangleError
    end

    if equilateral? 
      :equilateral
    elsif scalene? 
      :scalene
    else 
      :isosceles
    end
  end

  def valid?
    @sides.all? {|side| side > 0} &&
    @sides.all? {|side| side * 2 < @sides.reduce(:+)}
  end

  def equilateral?
    @sides.max == @sides.min
  end

  def scalene?
    @sides == @sides.uniq
  end
end