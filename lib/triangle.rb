class Triangle
   attr_accessor :side_1, :side_2, :side_3
   
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError

     elsif side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2
      raise TriangleError
    end

     if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else
      :scalene
    end

   class TriangleError < StandardError
  end
end
