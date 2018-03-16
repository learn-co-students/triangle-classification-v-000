class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    kind = nil

    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
      return kind
    end

    if  (@side2 + @side3) <= @side1 || (@side1 + @side3) <= @side2 || (@side1 + @side2) <= @side3
      raise TriangleError
      return kind
    end

    if @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      kind = :scalene
      return kind
    end

    if @side1 == @side2 && @side2 == @side3# && @side3 == @side1
      kind = :equilateral
      return kind
    end

    if @side1 == @side2 || @side2 == @side3 || @side3 == @side1
      kind = :isosceles
      return kind
    end

    puts "unknown error"
    kind
  end
end

class TriangleError < StandardError
 # triangle error code
end
