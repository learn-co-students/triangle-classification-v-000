require 'pry'

class Triangle
  # write code here

  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
  end

  def kind
    kind = nil
    @sides.combination(3).each do |a, b, c|
      if a <= 0 || b <= 0 || c <= 0
        raise TriangleError
      elsif a + b <= c || b + c <= a || a + c <= b
        raise TriangleError
      elsif a == b && b == c
        kind = :equilateral
      elsif b != c && a != b && a != c
        kind = :scalene
      else
        kind = :isosceles
      end
    end
    kind
  end

end


class TriangleError < StandardError
 # triangle error code
 def message
   "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. Further, each side must be larger than 0."
 end
end
