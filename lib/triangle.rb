require 'pry'

class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene, :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2
        raise TriangleError
    else
      if side_1 == side_2 && side_2 == side_3
        puts "same"
        :equilateral
      elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
        puts "2 side"
        :isosceles
      else
        puts "crazy!"
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
  def message
     "You don't know what a triangle is? Damn......"
  end
end
