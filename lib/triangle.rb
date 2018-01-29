class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3
  attr_reader :equilateral, :isoscles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0 || (side_2 + side_3 > side_1) || (side_1 + side_3 < side_2) || (side_1 + side_2 > side_3)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif side_1 == side_2 && side_1 == side_3 && side_2 == side_3
       :equilateral
     elsif side_2 == side_3 || side_1 == side_3 || side_1 == side_2
       :isosceles
     elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3
       :scalene
     end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle must exceed the length of the third side. Further, each side must be larger than 0."
    end
  end
end
