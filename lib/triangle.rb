class Triangle
  
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    if is_valid?
      determine_type
    else
      raise TriangleError
    end
  end
  
  private
  
  def determine_type
    if is_equilateral?
      :equilateral
    elsif is_isosceles?
      :isosceles
    else
      :scalene
    end
  end
  
  def is_equilateral?
    @side1 == @side2 && @side1 == @side3 
  end
  
  def is_isosceles?
    @side1 == @side2 || @side1 == @side3 || @side2 == @side3
  end
  
  def no_zero_sides?
    @side1 > 0 && @side2 > 0 && @side3 > 0
  end
  
  def follows_triangle_inequality?
    @side1 + @side2 > @side3 &&
    @side1 + @side3 > @side2 &&
    @side2 + @side3 > @side1
  end
  
  def is_valid?
    no_zero_sides? && follows_triangle_inequality?
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end