
class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

    def initialize(sideA, sideB, sideC)
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
      @triangle = [@sideA,@sideB,@sideC]
    end

    def kind
#whats not a triangle
      if @sideA + @sideB <= @sideC         ||
         @sideA + @sideC <= @sideB         ||
         @sideB + @sideC <= @sideA         ||
         @triangle.empty? == true          ||
         @triangle.include?(nil) == true   ||
         @triangle.include?(0) == true     ||
         @triangle.detect{|obj|obj<=-1} != nil
#error call
       raise TriangleError
#classification
      elsif @triangle[0] == @triangle[1] && @triangle[0] == @triangle[2]
        :equilateral
      elsif @triangle.uniq.length == 2
        :isosceles
      else
        :scalene
     end
   end

end

 class TriangleError < StandardError
   "This is not a valid Triangle"
 end
