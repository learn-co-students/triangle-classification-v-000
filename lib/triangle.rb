require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    
    side_arr = [side1, side2, side3].sort
    if ((side_arr[0] + side_arr[1]) <= side_arr[2]) || side_arr.include?(0)
      raise TriangleError
    elsif side_arr.uniq.length == 1
      type = :equilateral
    elsif side_arr.uniq.length == 2
      type = :isosceles
    else
      type = :scalene
    end
    type
  end


end

class TriangleError < StandardError
      
end

