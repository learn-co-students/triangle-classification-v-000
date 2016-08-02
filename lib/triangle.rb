require 'pry'

class Triangle
  attr_accessor :type, :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @s1 = side_1
    @s2 = side_2
    @s3 = side_3
  end

  def kind
    if (@s1 > 0 && @s2 > 0 && @s3 > 0) && (@s1 + @s2 > @s3 && @s2 + @s3 > @s1 && @s1 + @s3 > @s2)
      if @s1 == @s2 && @s2 == @s3
        self.type = :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
        self.type = :isosceles
      else
        self.type = :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
