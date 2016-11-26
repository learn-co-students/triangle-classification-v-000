class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    check_for_error
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def check_for_error
    checks = [(@side1 + @side2 > @side3), (@side1 + @side3 > @side2), (@side2 + @side3 > @side1)]
    [@side1, @side2, @side3].each { |s| checks << false if s <= 0 }
    raise TriangleError if checks.include?(false)
  end
end

class TriangleError < StandardError
end
