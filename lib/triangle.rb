class Triangle

  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
  end
  
  def valid_triangle?
    sum_1_2 = @sides[0] + @sides[1]
    sum_2_3 = @sides[1] + @sides[2]
    sum_1_3 = @sides[0] + @sides[2]
    
    if (@sides.all? {|side| side > 0}) && (sum_1_2 > @sides[2] && sum_1_3 > @sides[1] && sum_2_3 > @sides[0])
      true
    else
      false
    end
  end
  
  def kind
    if valid_triangle?
      if @sides.uniq.length == 2
        return :isosceles
      elsif @sides.uniq.length == 1 
        return :equilateral
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
        
  
  class TriangleError < StandardError
  
  end
end