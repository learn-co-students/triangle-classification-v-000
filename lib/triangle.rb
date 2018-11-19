require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind(side1, side2, side3)
    binding.pry
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    elsif (side1+side2) > side3 || (side1+side3) > side2 || (side2+side3) > side1
      :scalene
    else
        begin
          raise TriangleError
          rescue TriangleError => error
        end
    end
  end
class TriangleError < StandardError
    puts "Your triangle doesn't make sense."
end

end 
