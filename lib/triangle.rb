class Triangle
  # write code here
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if @first <= 0 || @second <= 0 || @third <= 0
      raise TriangleError
    elsif @first + @second <= @third || @first + @third <= @second || @second + @third < @first
      raise TriangleError
    elsif @first == @second && @second == @third
      return :equilateral
    elsif @first != @second && @first != @third && @second != @third
      return :scalene
    elsif @first == @second && @first != @third || @first == @third && @first != @second || @second == @third && @second != @first
      return :isosceles
    end
  end
    
end

class TriangleError < StandardError
 # triangle error code
end