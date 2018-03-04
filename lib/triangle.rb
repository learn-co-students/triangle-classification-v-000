require 'pry'

class Triangle
  # write code here
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end 
  
  def kind 
    if (@a <= 0) || (@b <= 0) || (@c <= 0) || ((@a + @b) <= @c) || ((@b + @c) <= @a) || ((@a + @c <= @b))
        raise TriangleError 
    elsif (@a == @b) && (@a == @c)
      :equilateral
    elsif (@b == @c) && (@a != @b) || (@a == @c) && (@a != @b) || (@a == @b) && (@a != @c)
      :isosceles 
    elsif (@a != @b) && (@a != @c) && (@b != @c)
      :scalene
    end
  end 
end 

class TriangleError < StandardError
end 