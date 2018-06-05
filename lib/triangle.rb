class Triangle
  
  attr_accessor :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one 
    @side_two = side_two 
    @side_three = side_three
  end 
  
  def kind 
    if ((@side_one + @side_two > @side_three) && (@side_one + @side_three > @side_two) && (@side_two + @side_three > @side_one))
      if @side_one == @side_two && @side_two == @side_three
        triangle = :equilateral 
      elsif ((@side_one == @side_two && @side_two != @side_three) || (@side_one == @side_three && @side_three != @side_two) ||(@side_three == @side_two && @side_two != @side_one))
        triangle = :isosceles
      else
        triangle = :scalene
      end 
    else 
      #begin 
      raise TriangleError
      #rescue TriangleError => error
      #end 
    end 
  end 
  
  class TriangleError < StandardError
  end 
end
