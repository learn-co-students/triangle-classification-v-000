class Triangle
attr_accessor :a, :b, :c

  # def initialize(length_a, length_b, length_c)
  # @triangle_length = []
  # @triangle_length << length_a
  # @triangle_length << length_b
  # @triangle_length << length_c
  # end 
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    true_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end
end

  def true_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)] 
    
    [a,b,c].each { |x| raise TriangleError if x == 0 }
    triangle.each { |x| raise TriangleError if x == false }
  end         
class TriangleError < StandardError
end

