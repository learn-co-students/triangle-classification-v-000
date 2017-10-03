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
    # elsif side_1 <= 0 || side_2 <= 0 || side_3 <= 0
    #   puts "hello twice!"
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     error.message
    #   end
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

  class TriangleError < StandardError
    def message
       puts "You don't know what a triangle is? Damn......"
    end
  end

end
