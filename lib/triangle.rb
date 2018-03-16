
class TriangleError < StandardError

end

class Triangle
  attr_reader :lengthA, :lengthB, :lengthC

  def initialize(lengthA,lengthB,lengthC)
    @lengthA = lengthA
    @lengthB = lengthB
    @lengthC = lengthC
  end

  def kind
    if self.valid? == false
      raise TriangleError
    elsif @lengthA == @lengthB && @lengthB == @lengthC
      return :equilateral
    elsif @lengthA == @lengthB || @lengthA == @lengthC || @lengthB == @lengthC
      return :isosceles
    else
      return :scalene
    end
  end

  def valid?
    if @lengthA + @lengthB <= @lengthC || @lengthA + @lengthC <= @lengthB || @lengthB + @lengthC <= @lengthA
      return false
    elsif @lengthA + @lengthB + @lengthC == 0
      return false
    else
      return true
    end
  end

end
