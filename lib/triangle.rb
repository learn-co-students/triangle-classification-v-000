# class Triangle
  

#   attr_reader :a, :b, :c
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end
  

#   def kind
#     validate_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end
  
#   def validate_triangle
#   sides = [a,b,c]
#   false if sides.any? { |side| side <= 0 }
#   true if sides.all? { |side| side == a }
#   sides.inject(:+) - sides.max > sides.max ? true : false
#   raise TriangleError if sides.include?(false)
# end

#   # def validate_triangle
#   #   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#   #   [a, b, c].each { |s| real_triangle << false if s <= 0 }
#   #   raise TriangleError if real_triangle.include?(false)
#   # end

  
#     class TriangleError < StandardError
# end

# end

class Triangle
  class TriangleError < StandardError
end
attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

def kind
  sides = [a,b,c].sort

  raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
  return :equilateral if sides.uniq.length  == 1
  return :isosceles if sides.uniq.length  == 2
  :scalene
end
end
