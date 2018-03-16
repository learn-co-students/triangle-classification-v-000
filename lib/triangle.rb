class Triangle
  
  #attr_accessor :side1,:side2,:side3


  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      #begin
        raise TriangleError
      #rescue TriangleError => error
        #return error.TriangleError
      #end
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      #begin
        raise TriangleError
      #rescue TriangleError => error
        #return error.TriangleError
        
      #end
    end

    if @side1 == @side2 && @side2 == @side3 && @side3 == @side1
        return :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
        return :isosceles
      else @side1 != @side2 && @side2 != @side3 && @side3 != @side1
        return :scalene
    end

  end

end

class TriangleError < StandardError
      def message
        "Triangles must have space inside them. Triangles must also close. "
      end
   
     end
