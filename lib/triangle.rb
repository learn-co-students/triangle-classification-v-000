class Triangle
  # triangle code
def initialize(side1,side2,side3)
@side1=side1
@side2=side2
@side3=side3
end
  def kind
    if @side1 >0  && @side2 >0 && @side3 >0 && (((@side1+@side2)>@side3) && ((@side2+@side3)>@side1) && ((@side3+@side1)>@side2))
      if @side1 == @side2 && @side2 == @side3
         :equilateral
       else
         if @side1 == @side2 || @side2 == @side3 || @side3 == @side1
           :isosceles
         else
             if @side1 != @side2 && @side2 != @side3 && @side3 != @side1
               :scalene
             end
          end
      end
    else
      raise TriangleError
    end
  end
    end



class TriangleError < StandardError
 # triangle error code
end
