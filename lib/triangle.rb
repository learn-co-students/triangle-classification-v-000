require 'pry'

class Triangle

  def initialize(side_1, side_2, side_3)
    #initializes an object with three arguments for the sides of the triangle
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def is_a_triangle?
    #Checks if the three arguements make up a triangle.
    @side_1 + @side_2 > @side_3 && @side_2 + @side_3 > @side_1 && @side_1 + @side_3 > @side_2
  end

  def kind
    #Checks if the the sides makes a triangle. If it doesn't it returns a custom error.
    #If it is a triangle it'll tell you what type of triangle it is.
    if self.is_a_triangle? == false
      raise TriangleError
    elsif @side_1 == @side_2 && @side_1 == @side_3 && @side_1
      :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 && @side_1 != 0
      :isosceles
    else #@side_1 != @side_2 && @side_1 + @side_2 > @side_3
      :scalene
    end
  end

end

class TriangleError < StandardError
  #custom error inheriting methods from the StandardError class
end
