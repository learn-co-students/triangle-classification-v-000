class Triangle
  attr_accessor :sideA, :sideB, :sideC

  def initialize(a, b, c)
    @sideA = a
    @sideB = b
    @sideC = c
  end

  def kind
    if sideA <= 0 || sideB <= 0 || sideC <= 0 ||
       sideA + sideB <= sideC ||
       sideB + sideC <= sideA ||
       sideC + sideA <= sideB
      raise TriangleError
    elsif sideA == sideB && sideB == sideC
      :equilateral
    elsif (sideA == sideB && sideB != sideC) || 
          (sideB == sideC && sideC != sideA) ||
          (sideC == sideA && sideA != sideB)
      :isosceles
    elsif sideA != sideB && sideB != sideC && sideC != sideA
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
