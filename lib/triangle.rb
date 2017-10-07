require 'pry'
class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides_array = [@side_1, @side_2, @side_3]
  end

  def kind
     if @side_1 > 0 && @side_2 > 0 && @side_3 > 0
      if @sides_array.uniq.length == 1
        :equilateral
      elsif @sides_array.uniq.length == 2
        if @sides_array.sort[2] < (@sides_array.sort[0] + @sides_array.sort[1])
          :isosceles
        else
          raise TriangleError
        end
      elsif @sides_array.uniq.length == 3
        if @sides_array.sort[2] < (@sides_array.sort[0] + @sides_array.sort[1])
          :scalene
        else
          raise TriangleError
        end
      end
     else
       raise TriangleError
     end
  end
end

class TriangleError < StandardError
end
