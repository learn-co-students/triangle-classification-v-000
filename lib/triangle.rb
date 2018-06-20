require 'pry'
class Triangle
  # write code here
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    #binding.pry
    if valid? == false
      #begin
        raise TriangleError
      #rescue TriangleError => error
        #puts error.message
      #end
    elsif @side1 == @side2 && @side1 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      return :isosceles
    else
      return :scalene
    end
  end
  
  def valid?
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      return false
    elsif (@side1 + @side2) <= @side3 || (@side1 + @side3) <= @side2 || (@side3 + @side2) <= @side1
      return false
    else
      return true
    end
  end
  
  class TriangleError < StandardError
    def message
      puts "That is not a valid triangle."
    end
  end
end
