class Triangle
  
  attr_accessor :side1, :side2, :side3, :all_sides

  def initialize(side_one, side_two, side_three)
    @side1 = side_one
    @side2 = side_two
    @side3 = side_three
    @all_sides = [side1, side2, side3]
  end  

  def kind
    if all_sides.any? {|side| side == 0 || side < 0} || side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise TriangleError
    end
    if all_sides.uniq.length == 1    
        :equilateral 
      elsif all_sides.uniq.length == 2
        :isosceles 
      else
        :scalene 
    end    
  end

end

class TriangleError < StandardError
  
  def message
    puts "Each triangle side must be larger than 0 and no two sides added together should be less than or equal to the remaining third side."
  end

end