require 'pry'
class Triangle
  attr_reader :one, :two, :three
  def initialize (side_1 , side_2 , side_3)
    @one = side_1
    @two = side_2
    @three = side_3
  end 
  def kind
    
    if @one + @two <= @three || @one + @three <= @two || @two + @three <= @one || @one == 0 || @two == 0 || @three == 0
      #binding.pry
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    elsif @one == @two && @one == @three && @two == @three 
      :equilateral
    elsif @one == @two || @one == @three || @two == @three
      :isosceles
    else  
      :scalene
    end 
  end 
  
  
 
  class TriangleError < StandardError
    def message 
      "The sum of any two sides of the triangle needs to be greater than the third side and also sides must be greater than 0. Please redefine the sides of your triangle!!"
    end
  end
end 
 
