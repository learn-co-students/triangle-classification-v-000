class Triangle
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if @first == 0 || @second == 0 || third == 0
      raise TriangleError
    elsif @first < 0 || @second < 0 || third < 0
      raise TriangleError
    elsif @first + @second <= @third || @first + @third <= @second || @second + @third <= @first
      raise TriangleError
    elsif @first == @second && @first == @third
      :equilateral
    elsif @first == @second || @second == @third || @first == @third
      :isosceles
    elsif @first != @second && @first != @third && @second != @third
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
