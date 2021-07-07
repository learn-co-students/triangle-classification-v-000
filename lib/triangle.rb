class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2 
    @side3 = side3
    
  end 
  
  def sides_positive?
    @side1 > 0 && @side2 > 0 && @side3 > 0 
  end 
  
  def sides_valid?
   @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
  end
  
  def triangle_valid?
    self.sides_positive? && self.sides_valid?
  end 
    
  
  def kind
    if triangle_valid?
        if @side1 == @side2 && @side2 == @side3 
      :equilateral 
     elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
     else
      :scalene
      end 
    else 
      raise TriangleError
    end 
  end 
  
  
 class TriangleError < StandardError 
 end

end

