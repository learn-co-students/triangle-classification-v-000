class Triangle
  
  attr_accessor = :equilateral, :isosceles, :scalene

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end 
  
  def valid?
    if @length1 <=0 || @length2 <=0 || @length3 <=0
      false 
    elsif @length1+@length2 <= @length3 ||@length2+@length3 <= @length1 || @length1+@length3 <= @length2
      false
    else
      true
    end 
  end   
  
    def kind
      
      if self.valid?
        if @length1 == @length2 && @length2 == @length3
            :equilateral
        elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3 
            :isosceles
        elsif @length1 > 0 && @length2 > 0 && @length3 > 0 
            :scalene
        end 
      else 
        begin
          raise TriangleError
        end 
      end 
    end
   

    class TriangleError < StandardError
      def message
        "Triangle Error"
      end 
    end 
end 
