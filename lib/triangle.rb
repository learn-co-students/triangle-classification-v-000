class Triangle
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 
  
  def kind 
    is_valid? 
    if @side_one == @side_two && @side_two == @side_three && @side_three == @side_one
      :equilateral
    elsif
      @side_one != @side_two && @side_two != @side_three && @side_three != @side_one 
      :scalene
    else 
      :isosceles
    end 
  end
  
  def is_valid?
    if @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_three + @side_one <= @side_two
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError 
  end 
end
