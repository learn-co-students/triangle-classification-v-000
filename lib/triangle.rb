require 'pry'

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2
    @side3 = side3
  end

  def illegal_triangle?
    if @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2 
      true
    elsif @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      true
    else
      false
    end
  end
  
  def kind
    if self.illegal_triangle?
       begin
        raise TriangleError 
      rescue TriangleError => error
       puts error.message
    #  end
    elsif (@side1 == @side2 && @side2 == @side3)
      :equilateral 
    elsif (@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
      :isosceles 
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "You input an invalid triangle! Check your side measurements, and try again."
  end
end


