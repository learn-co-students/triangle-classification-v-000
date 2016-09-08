class Triangle
    attr_accessor:sides
    
    
  def initialize(side_1, side_2, side_3)
      @sides = [side_1, side_2, side_3]
      @sides.sort!
  end
  
  def kind
    if sides.any? {|side| side <= 0}
            raise TriangleError
    elsif (sides[0] + sides[1]) <= sides[2]
            raise TriangleError
    elsif sides[0] == sides[1] && sides[1] == sides[2]
        :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2]
        :isosceles
    else
        :scalene
    end
  end
end

class TriangleError < StandardError
     def message
       "Sides must make a valid triangle!"
     end
end