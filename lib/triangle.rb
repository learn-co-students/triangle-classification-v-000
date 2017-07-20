class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three

  end

  def kind
    if length_one <= 0 || length_two <= 0  || length_three <= 0
      raise TriangleError
    elsif length_one + length_two <= length_three ||
      length_two + length_three <= length_one ||
      length_one + length_three <= length_two
      raise TriangleError

    elsif length_one == length_two && length_one == length_three &&
      length_two == length_three
      :equilateral
    elsif length_one == length_two && length_one != length_three ||
      length_one != length_two && length_two == length_three ||
      length_one == length_three && length_one != length_two
      :isosceles
    else 
      :scalene
    end
  end

end

class TriangleError < StandardError

end


#--------------School's code (cleaner)----------------
# class Triangle
#   attr_reader :a, :b, :c
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end
#
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
#
#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#   end
# end
#
# class TriangleError < StandardError
# end
