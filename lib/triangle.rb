
class Triangle
  
  attr_reader :side_1, :side_2, :side_3
  
    
     def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
     end
     
     def kind 
       sides = [self.side_1, self.side_2, self.side_3] 
       sides.sort!
       if sides.any? {|side| side <= 0} || sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif sides.all? {|side| side == sides[0]}
      :equilateral
    elsif sides[1] == sides[2]
      :isosceles
    elsif sides.uniq == sides
      :scalene
    end
  end
end    

class TriangleError < StandardError

end

   
    

