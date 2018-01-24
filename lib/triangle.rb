require "pry"
class Triangle

def initialize(side_1, side_2, side_3)
@sides = []
@sides << side_1
@sides << side_2
@sides << side_3
end

def kind
  if @sides.include?(0) || @sides[0] + @sides[1] <= @sides[2] || @sides[0] + @sides[2] <= @sides[1] || @sides[2] + @sides[1] <= @sides[0]

   raise TriangleError
   elsif @sides[0] == @sides[1] && @sides[0] == @sides[2]
   :equilateral
   elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2]
   :isosceles
   else :scalene
   end
    end

  end

class TriangleError < StandardError
def message
  "There is an eror with the sides of your triangle!"
end
end
