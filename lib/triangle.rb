class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if [side1, side2, side3].any? { |e| e <= 0 }
      raise TriangleError
    end
  end

  def kind
    if [@side1, @side2, @side3].uniq.size == 1
        :equilateral
    elsif self.violates?
        raise TriangleError
    elsif [@side1, @side2, @side3].uniq.size == 2
        :isosceles
    else
        :scalene
    end
  end

  def violates?
    sorted = [@side1, @side2, @side3].sort
    true if sorted[0] + sorted[1] <= sorted[2]
  end
end

class TriangleError < StandardError
 # triangle error code
end
