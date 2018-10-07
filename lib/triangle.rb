class Triangle
  
  class TriangleError < StandardError
  end
  
  attr_accessor :kind, :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides =[]
    @sides << side1 << side2 << side3
  end
  
  def kind
    if !self.valid?
      return TriangleError
    elsif self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    end
  end
  
  def valid?
    @sides.sort!
 
    if @sides[2] > (@sides[1] - @sides[0]) && 
      @sides[2] < (@sides[1] + @sides[0]) && 
      side1*side2*side3 != 0
      true
    else raise TriangleError
    end
  end
  
  def equilateral?
    if self.valid? && side1 == side2 && side2 == side3
      true
    else false
    end
  end
  
  def isosceles?
    if self.valid? && side1 == side2 || side2 == side3 || side1 == side3 && self.equilateral? == false
      true
    else false
    end
  end
  
  def scalene?
    if self.valid? && side1 != side2 && side2 != side3 && side1 != side3
      true
    else false
    end
  end
    
end
