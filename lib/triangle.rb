class Triangle
   attr_reader :side_a, :side_b, :side_c

   def initialize(side_a, side_b, side_c)
      @side_a, @side_b, @side_c = [side_a, side_b, side_c].sort
   end

   def kind
      raise TriangleError if (@side_a <= 0) || (@side_a + @side_b <= @side_c)
      return :equilateral if @side_a == @side_c
      return :isosceles if (@side_a == @side_b) || (@side_b == @side_c)
      :scalene
   end
end

class TriangleError < StandardError
   puts 'Invalid triangle!'
end
