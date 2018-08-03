class Triangle
  

  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def 
end

  def kind
    valid_triangle?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  
  def valid_triangle?
  sides = [a,b,c]
  false if sides.any? { |side| side <= 0 }
  true if sides.all? { |side| side == a }
  sides.inject(:+) - sides.max > sides.max ? true : false
  raise TriangleError if false
end

#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#   end

# def valid_triangle?(a, b, c)
#   a, b, c = [a, b, c].sort
#   raise TriangleError if a <= 0 or a + b <= c
# end
  
    class TriangleError < StandardError
end

end
