class Triangle
  attr_accessor :sides
 
  def initialize(side_1, side_2, side_3)
   @sides = [side_1, side_2, side_3]
  end
    
  def kind
    if @sides.find {|side| side <= 0} || (@sides[0] + @sides[1] < @sides[2]) || (@sides[0] + @sides[2] == @sides[1]) || (@sides[1] + @sides[2] < @sides[0])  
      raise TriangleError
    elsif @sides.uniq.count == 1
     :equilateral
    elsif @sides.uniq.count == 2
      :isosceles
    else
       :scalene
    end
  end

  class TriangleError < StandardError

    
  end
  
end
