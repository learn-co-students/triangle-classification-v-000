class Triangle
  attr_accessor :sides

  def initialize(side, side2, side3)
    @side = side
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    end

    if @side + @side2 <= @side3 || @side2 + @side3 <= @side || @side + @side3 <= @side2
      raise TriangleError
    end

    if @side == @side2 && @side2 == @side3
      :equilateral
    elsif @side == @side2 || @side2 == @side3 || @side == @side3
      :isosceles
    elsif
      @side != @side2 && @side2 != @side3 && @side != @side3
      :scalene
    else
      p what
    end
  end
end

class TriangleError < StandardError
  puts "your triangle is fucked. Learn2Math, kthxbai."
end
