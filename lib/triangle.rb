class Triangle
  # triangle code
  attr_accessor :side_a, :side_b, :side_c, :kind
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end  
  
  def kind
      if @side_a <= 0 ||  @side_b <= 0 ||  @side_c <= 0 
            begin
                raise TriangleError
                puts error.message
            end 
      end 
     
      if (@side_a + @side_b) <= @side_c || (@side_b + @side_c) <= @side_a || (@side_a + @side_c) <= @side_b
          begin
                raise TriangleError
                puts error.message
          end 
      end  
      
      if @side_a == @side_b && @side_b == @side_c
            self.kind = :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_c == @side_b
            self.kind = :isosceles
      elsif @side_a != @side_b && @side_a != @side_c && @side_c != @side_b
            self.kind = :scalene
      end
  end
  
  class TriangleError < StandardError
      def message
           "TriangleError"
      end    
  end
end
