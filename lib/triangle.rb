class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
 	  @side2 = side2
    @side3 = side3
  end

  def valid?
    if @side1 + @side2 <= @side3
      false 
    elsif  @side2 + @side3 <= @side1
      false 
     elsif  @side3 + @side1 <= @side2
      false  
    elsif @side1 <= 0 
      false 
    elsif @side2 <= 0
      false 
    elsif @side3 <= 0
      false  
    else 
      true  
    end 
  end 
  
  
  def kind
    if valid? != true 
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
        :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1  
        :isosceles 
    else 
      :scalene 
    end 
  end 


   class TriangleError < StandardError
    # triangle error code
  end
  
end
