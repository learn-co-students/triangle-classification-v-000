class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
    if (@side1 == @side2 && @side1 == @side3) && @side1 != 0
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    elsif (@side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    else 
        begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end 
  end 
  
  class TriangleError < StnadardError 
      def message 
      "Invalid Side Length"
    end
  end 
end
