require 'pry'
class Triangle
  # write code here
  attr_accessor :sideA, :sideB, :sideC

  def initialize(sideA,sideB,sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    if (@sideA <= 0 || @sideB <= 0 || @sideC <= 0 || (@sideA + @sideB) <= @sideC || (@sideB + @sideC) <= @sideA || (@sideA + @sideC) <= @sideB )
      # begin
      raise TriangleError
      # rescue TriangleError
          # puts error.message
      # end
    elsif(@sideA == @sideB && @sideB ==@sideC && sideA > 0)
      return :equilateral
    elsif (@sideA == @sideB || @sideA == @sideC || @sideB == @sideC)
      return :isosceles
    elsif (@sideA != @sideB && @sideB!=@sideC)
      return :scalene
    end
  end
end

class TriangleError < StandardError
  # def message
  #   "Invalid Triangle" #temporary message
  # end
end

