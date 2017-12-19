require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    valid = true
    if @side1 == 0 || @side2 == 0 || @side3 ==0
      valid = false
    elsif @side1 > (@side2 + @side3)
      valid = false
    elsif @side3 > (@side2 + @side1)
      valid = false
    elsif @side2 > (@side1 + @side3)
      valid = false
    elsif @side1 == (@side2 + @side3)
      valid = false
    elsif @side3 == (@side2 + @side1)
      valid = false
    elsif @side2 == (@side1 + @side3)
      valid = false
    end
    valid
  end

  def kind
    equilateral = :equilateral
    isosceles = :isosceles
    scalene = :scalene

    if self.valid? == false
      raise TriangleError
    end

    if self.valid?
      type = nil
      if ((@side1.to_f + @side2.to_f + @side3.to_f) / 3) == @side1.to_f
        type = equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        type = isosceles
      else
        type = scalene
      end
    end
    type
  end
end

class TriangleError < StandardError
end
