require 'pry'

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side_1, side_2, side_3)
    @side1 = side_1
    @side2 = side_2
    @side3 = side_3
  end

  def kind
    ary = [@side1, @side2, @side3]
    ary.sort!
    if ary[0] <= 0
        raise TriangleError
    elsif ary[0] + ary[1] <= ary[2]
        raise TriangleError
    else
     ary.uniq!
      if ary.length == 1
          :equilateral
        elsif ary.length ==2        
          :isosceles
      else
        :scalene
      end
    end

  end

end

class TriangleError < StandardError
  def message
    "Your triangle is not valid!"
  end
end
