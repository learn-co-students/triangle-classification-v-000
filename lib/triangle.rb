# class Triangle
#
#   def initialize (side_1, side_2, side_3)
#     @tri_sides = []
#     @tri_sides << side_1
#     @tri_sides << side_2
#     @tri_sides << side_3
#   end
#
#   def valid?
#     sum_1_2 = @tri_sides[0] + @tri_sides[1]
#     sum_1_3 = @tri_sides[0] + @tri_sides[2]
#     sum_2_3 = @tri_sides[1] + @tri_sides[2]
#
#     if (@tri_sides.none? {|side| side <= 0}) &&
#       (sum_1_2 > @tri_sides[2] && sum_1_3 > @tri_sides[1] && sum_2_3 > @tri_sides[0])
#       true
#     else
#       false
#     end
#   end
#
#   def kind
#     if valid?
#       if @tri_sides.uniq.length == 1
#         :equilateral
#       elsif @tri_sides.uniq.length == 2
#         :isosceles
#       else
#         :scalene
#       end
#     else
#       raise TriangleError
#     end
#   end
# end
#
#
# class TriangleError < StandardError
#
# end

class Triangle

  attr_reader :a, :b, :c

  def initialize (a, b, c)
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
    real_tri = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each {|side| real_tri << false if side <= 0}
    raise TriangleError if real_tri.include?(false)
  end



  class TriangleError < StandardError
  end

end
