class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind 
    if !valid_triangle?
      begin
        raise TriangleError
        puts error.message
      end
    else 
      triangle_type
    end 
  end 
  
  def sides_greater_than_zero?
    @side_1 > 0 && @side_2 > 0 && @side_3 > 0 
  end 
  
  def valid_sides?
    (@side_1 + @side_2) > @side_3 &&
    (@side_1 + @side_3) > @side_2 && 
    (@side_2 + @side_3) > @side_1
  end 
  
  def valid_triangle?
    sides_greater_than_zero? && valid_sides?
  end 
  
  def triangle_type
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif (@side_1 != @side_2 && @side_2 == @side_3) ||
          (@side_1 != @side_2 && @side_1 == @side_3) ||
          (@side_1 == @side_2 && @side_1 != @side_3)
      :isosceles
    elsif (@side_1 != @side_2 && @side_2 != @side_3)
      :scalene
    end 
  end 
  
  class TriangleError < StandardError
    def message 
      "Not a valid triangle."
    end
  end
end
