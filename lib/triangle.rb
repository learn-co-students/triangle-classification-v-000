require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
   #binding.pry
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    elsif (side1+side2) > side3 || (side1+side3) > side2 || (side2+side3) > side1
      :scalene
    elsif side1 > 0 && side2 > 0 && side3 > 0
      :other_triangle
    else
        begin
          raise TriangleError
          rescue TriangleError => error
            puts error.message
        end
    end
  end
class TriangleError < StandardError
    def message 
       "Your triangle is invalid."
     end
end

end 
