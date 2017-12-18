class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a) ]
    [a, b, c].each {|s| real_triangle << false if s <= 0}
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end





# class Triangle
#
#   attr_accessor :a, :b, :c
#
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end
#
#   def kind
#     valid_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end
#
#   def valid_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#   end
# end
#
# class TriangleError < StandardError
#
# end
#
#
#
#




# require 'pry'
#
# class Triangle
#   attr_accessor :a, :b, :c
#
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end
#
#   def kind
#     valid_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end
#
#   def valid_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#
#   end
# end


    # real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    # [a, b, c].each { |s| real_triangle << false if s <= 0 }
    #



  class TriangleError < StandardError

end


# class Triangle
#
#   attr_accessor :a, :b, :c
#
# def initialize(a, b, c)
#   @a = a
#   @b = b
#   @c = c
# end
#
# def kind
#   real_triangle
#   if a == b && b == c
#     :equilateral
#   elsif a == b || b == c || a == c
#     :isosceles
#   else
#     :scalene
#   end
# end
#
#
# def real_triangle
#     valid_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each {|s| valid_triangle << false if s <= 0}
#     raise TriangleError if valid_triangle.include?(false)
#   end
# end
#
# class TriangleError < StandardError
#
# end


# class Triangle
#   attr_accessor :s1, :s2, :s3
#   # write code here
#   def initialize (s1, s2, s3)
#     @s1 = s1
#     @s2 = s2
#     @s3 = s3
#   end
#
#   def kind
#     valid_triangle
#     if s1 == s2 && s2 == s3
#       :equilateral
#     elsif s1 == s2 || s2 == s3 || s1 == s3
#       :isosceles
#     else
#       :scalene
#     end
#   end
#
#   def valid_triangle
#       valid_tri = [(s1 < s2 + s3), (s2 < s1 + s3), (s3 < s1 + s2)]
#       [s1, s2, s3].each {|s| valid_tri << false if s <= 0}
#       raise TriangleError if valid_tri.include?(false)
#     end
#   end
#
#   class TriangleError < StandardError
#
#
# end
