require 'pry'
class Triangle
attr_accessor :side_a, :side_b, :side_c

def initialize(side_a, side_b, side_c)
  @side_a = side_a
  @side_b = side_b
  @side_c = side_c
end

def valid_triangle
  tri_tri = [side_a, side_b, side_c]
  legit_triangle = [(side_a + side_b > side_c), (side_a + side_c > side_b), (side_b + side_c > side_a)]
  tri_tri.each do |tri|
    if tri <= 0
      legit_triangle << false
    end
    if legit_triangle.include?(false)
        raise TriangleError


end
end
end
def kind
  valid_triangle
  if side_a == side_b && side_b == side_c  && side_a == side_c
    :equilateral
  elsif side_a == side_b || side_b == side_c || side_a == side_c
    :isosceles
  elsif side_a != side_b || side_b != side_c || side_a != side_c
    :scalene
end
end
end
class TriangleError < StandardError
  def message
    "TriangleError"
  end
end
