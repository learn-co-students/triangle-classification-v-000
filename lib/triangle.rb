require "pry"

class Triangle
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if !self.valid_triangle?
      # begin
        raise TriangleError
      # rescue TriangleError => error
        # puts error.message
      # end
    elsif side1 == side2 && side2 == side3
      return :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      return :isosceles
    else
      return :scalene
    end
  end

  def valid_triangle?
    return side1 < side2 + side3 && side2 < side1 + side3 && side3 < side1 + side2 && 
    side1 > 0 && side2 > 0 && side3 > 0
  end

  class TriangleError < StandardError
    def message
      "GTFOH with that fake triangle."
    end
  end
end
