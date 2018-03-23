require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3, :side_list
  # attr_accessor :equilateral, :isosceles, :scalene


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if side1 <= 0 || side2 <= 0 || side3 <= 0 || (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side1 + side3) <= side2
      begin
        raise TriangleError
      # rescue TriangleError
      end
    end
    @side_list = []
    @side_list << side1
    @side_list << side2
    @side_list << side3
  end

  def kind
    # binding.pry
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    elsif side1 != side2 && side2 != side3 && side1 != side3
      :scalene
    else
      # begin
      #   raise TriangleError
      # rescue TriangleError
      # end
    end
  end

  class TriangleError < StandardError
    "Not a Trianle, just yet. Change the sides to a positive integer"
  end

end
