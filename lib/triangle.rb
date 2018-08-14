class Triangle
  # write code here
  attr_accessor :lengthA, :lengthB, :lengthC

  def initialize(lengthA, lengthB, lengthC)
    @lengthA = lengthA
    @lengthB = lengthB
    @lengthC = lengthC
  end

  def kind
    if @lengthA <= 0 || @lengthB <= 0 || @lengthC <= 0
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    elsif (@lengthA + @lengthB) <= @lengthC
      raise TriangleError
    elsif (@lengthC + @lengthB) <= @lengthA
      raise TriangleError
    elsif (@lengthA + @lengthC) <= @lengthB
      raise TriangleError
    elsif @lengthA == @lengthB && @lengthB == @lengthC
      return :equilateral
    elsif @lengthA == @lengthB && @lengthA != @lengthC
      return :isosceles
    elsif @lengthB == @lengthC && @lengthB != @lengthA
      return :isosceles
    elsif @lengthA == @lengthC && @lengthA != @lengthB
      return :isosceles
    elsif @lengthA != @lengthB && @lengthA != @lengthC
      return :scalene
    end
  end

  class TriangleError < StandardError
    # def message
    #   "You must give lengths that form a triangle"
    # end
  end

end
