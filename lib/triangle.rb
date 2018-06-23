class Triangle
 attr_accessor :side_a, :side_b, :side_c
 def initialize(side_a, side_b, side_c)
   @side_a = side_a
   @side_b = side_b
   @side_c = side_c
 end
 
  class TriangleError < StandardError
    # triangle error code
  end
end