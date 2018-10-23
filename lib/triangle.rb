require 'pry'
class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 == @side2 && @side2 == @side3 
      :equilateral
      
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3 
      :isosceles
      
    else
      :scalene
    end
        begin
          raise TriangleError => TriangleError
            puts error.message
      
      class TriangleError < StandardError
        def message
          "The sum of the lenghts of any two sides does not exceed the length of the third side and each side must be larger than 0"
        end
     end
   end
 end

     
   
    
    
    
