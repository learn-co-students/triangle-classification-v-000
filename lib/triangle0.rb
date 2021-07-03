require 'pry'
class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    a = @side1
    b = @side2
    c = @side3
    if [a, b, c].any? {|s| s<=0 }
      raise TriangleError
    end
    if a+b <= c || b + c <= a || a+c <= b
      raise TriangleError
    end
    if [a, b, c].uniq.count == 1
      :equilateral
    elsif [a, b, c].uniq.count == 2
      :isosceles
    else :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
