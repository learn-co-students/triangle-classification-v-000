class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2 
    @side_3 = side_3 
  end 
  
  def triangle? 
    if 
      @side_1 + @side_2 > @side_3 &&
      @side_2 + @side_3 > @side_1 &&
      @side_3 + @side_1 > @side_2 && 
      @side_1 > 0 && @side_2 > 0 && @side_3 > 0 
      return true 
    else 
      false  
    end 
  end 
      
  
  def kind 
    if triangle? == true
      if @side_1 == @side_2 && @side_2 == @side_3 
        :equilateral 
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 
        :isosceles
      else 
        :scalene
      end 
    else 
       begin 
        raise TriangleError
      
     end 
    end 
  end 
  
  class TriangleError < StandardError 
  end

end 
  
  

