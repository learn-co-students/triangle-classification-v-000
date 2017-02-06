require 'pry'

class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c, :equilateral, :isosceles, :scalene

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if self.is_triangle?
      if self.is_equilateral?
        :equilateral
      elsif self.is_isosceles?
        :isosceles
      elsif self.is_scalene?
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def is_triangle?
    #Check if all sides are bigger than 0
    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0
      return false
    #check if any two sides add up to more than third side
    elsif @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a
      return false
    else
      true
    end
  end

  def is_equilateral?
    if @side_a == @side_b && @side_b == @side_c
      true
    else
      false
    end
  end

  def is_isosceles?
    if (@side_a == @side_b && @side_a != @side_c ) || (@side_b == @side_c && @side_a != @side_c) || (@side_a == @side_c && @side_a != @side_b)
      true
    else
      false
    end
  end

  def is_scalene?
    if @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
      true
    else
      false
    end
  end

end

class TriangleError < StandardError
  def message
    "This is not a triangle"
  end
end
