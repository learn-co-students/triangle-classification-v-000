class Triangle
   attr_accessor :side1, :side2, :side3, :kind, :equilateral, :isosceles, :scalene


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end


    #if !(@side1 + @side2 == @side3 ||
    #         @side1 + @side3 == @side2 ||
    #          @side2 + @side3 == @side1) then
    #     begin
    #        raise TriangleError
    #     end
    #elsif @side1 == 0 || @side2 == 0 || @side3 == 0 then
    #       begin
    #         raise TriangleError
    #       end
    #end
    def kind
    if @side1 == 0 || @side2 == 0 || @side3 == 0 then
           raise TriangleError
    end
    if  @side1 < 0 || @side2 < 0 || @side3 < 0 then
           raise TriangleError
    end
    if !(@side1 + @side2 > @side3) ||
       !(@side1 + @side3 > @side2) ||
       !(@side2 + @side3 > @side1) then
          raise TriangleError
    end
    if @side1 + @side2 == @side3 * 2
       @kind = :equilateral
    elsif @side1 == @side2 && @side3 < @side1 ||
           @side1 == @side3 && @side2 < @side1 ||
           @side2 == @side3 && @side1 < @side2 then
           @kind = :isosceles
     elsif @side1 != @side2 ||
           @side1 != @side3 ||
           @side2 != @side3 then
           @kind = :scalene
    end
end


end

class TriangleError < StandardError
   def noSizeMessage
     puts "triangles with no size are illegal"
   end
   def negativeSidesMessage
     puts "triangles with negative sides are illegal"
   end
   def inequalityMessage
     puts "triangles violating triangle inequality are illegal"
   end
end
