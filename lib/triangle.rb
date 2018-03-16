class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if triangle_invalid?
      raise TriangleError
    else
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
        :isosceles
      else
        :scalene
      end
    end
  end

  def triangle_invalid?
    if @side1 == 0 || @side2 == 0 || @side3 == 0
      true
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2
      true
    else
      false
    end
  end

end

class TriangleError < StandardError
  puts "Invalid triangle."
end