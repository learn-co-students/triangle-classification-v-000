class Triangle
  attr_accessor :side_a, :side_b, :side_c
 
  def initialize(a, b, c)
    self.side_a = a
    self.side_b = b
    self.side_c = c
  end
  
  def kind
    arr = [side_a, side_b, side_c]
    arr.sort!
    
    if (arr[0] <= 0) || (arr[0] + arr[1] <= arr[2])
      raise Triangle::TriangleError
      
    elsif (side_a == side_b) && (side_a == side_c)
      :equilateral  
    elsif side_a == side_b || side_a == side_c || side_b == side_c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
      def message 
        "You must enter three sides grerater than zero that satisfy the triangle inequality!"
      end
  end  
end

