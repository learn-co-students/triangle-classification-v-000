class Triangle
attr_accessor :sideA, :sideB, :sideC, :type

  def initialize(a, b, c)
    @sideA = a
    @sideB = b
    @sideC = c
    @type = ""
  end

  def kind
    if self.sideA + self.sideB > self.sideC && self.sideA + self.sideC > self.sideB && self.sideB + self.sideC > self.sideA && self.sideA > 0 && self.sideB > 0 && self.sideC > 0
      if self.sideA == self.sideB && self.sideC == self.sideB
        :equilateral
      elsif self.sideA == self.sideB || self.sideA == self.sideC || self.sideB == self.sideC
        :isosceles
      elsif self.sideA != self.sideB && self.sideA != self.sideC && self.sideB != self.sideC
        :scalene
      end
    else
      raise TriangleError
    end

  end



end

class TriangleError < StandardError

end
