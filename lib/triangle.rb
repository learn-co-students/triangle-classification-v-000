class Triangle
  
  attr_reader :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def valid?
    real_triangle = [(side_1 + side_2 > side_3), (side_2 + side_3 > side_1), (side_1 + side_3 > side_2)]
    [side_1, side_2, side_3].each {|s| real_triangle << false if s <=0}
    raise TriangleError if real_triangle.include?(false)
  end 
    
  
  def kind 
    valid?
    if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
        :isosceles
    elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
        :scalene
     end
   end
end
  
  class TriangleError < StandardError
  end

  