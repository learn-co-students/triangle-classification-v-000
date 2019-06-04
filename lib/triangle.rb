class Triangle
  
  attr_accessor :side1, :side2, :side3
  attr_reader :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def type  
      if @side1 == @side2 && @side1 == @side3 
        :equilateral 
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles 
      elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3 
        :scalene
      end 
  end 
  
  def valid?
    if @side1 + @side2 > @side3 && @side3 + @side2 > @side1 && @side1 + @side3 > @side2
      true 
    else 
      false 
    end 
  end 
  
  def kind 
    if !valid? 
      raise TriangleError
    else 
      self.type 
    end 
  end 
  
  class TriangleError < StandardError 
  end 
  
end
