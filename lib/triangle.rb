class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind 
    self.validate 
 
    else if side_1 == side_2 && side_2 == side_3
      :equilateral
    else if side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else
      :scalene
    end
    end
    end
  end
  
  def validate
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
     raise TriangleError
    else if @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
     raise TriangleError
    end
   end
  end
  
  class TriangleError < StandardError
  end
end

