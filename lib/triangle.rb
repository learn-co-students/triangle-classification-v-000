### The following code (commented out) is my first attempt at 
### completing this exercise. 

# class Triangle

#   attr_accessor :side_1, :side_2, :side_3
  
#   def initialize(side_1, side_2, side_3)
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#   end

#   def kind
#     triangle = [side_1, side_2, side_3]
    
#     if triangle.any? {|s| s == 0}
#       raise TriangleError
#     elsif triangle.any? {|s| s < 0}
#       raise TriangleError
#     elsif triangle.uniq.length == 2 && triangle.uniq[0]*2 <= triangle.uniq[1] 
#       raise TriangleError
#     elsif triangle.sort[0] + triangle.sort[1] < triangle.sort[2]
#       raise TriangleError
#     elsif triangle.uniq.length == 1
#       :equilateral
#     elsif triangle.uniq.length == 2
#       :isosceles
#     else
#       :scalene
#     end
#   end
# end


### Here's a refactored versin of the Triangle class including
### some of the solutions code.

class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle

    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]

    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

end

class TriangleError < StandardError
end