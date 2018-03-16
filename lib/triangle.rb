class Triangle
	attr_accessor :side1, :side2, :side3
  

  def initialize (side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def not_a_triangle
  	if side1 == 0 || side2 == 0 || side3 == 0
  		true
   elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
       true
  	end
  end
 

  def kind
    if self.not_a_triangle == true
  		raise TriangleError
    elsif side1 == side2 && side1 == side3
       :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
  		:isosceles
  	elsif side1 != side2 && side2 != side3 && side3 != side1
  	   :scalene
  
  	end
  end
end

class TriangleError < StandardError
    def message
 	"This is not a triangle. Try again!"
  end
end