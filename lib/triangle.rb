class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    validating_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
    end
  end

  def validating_triangle
    if !(x + y > z &&  x + z > y && y + z > x)
      raise TriangleError
    elsif !(x > 0 && y > 0 && z > 0)
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end

# def kind
#   sides = [@x, @y, @z]
#   # None of the sides can be zero.
#   if sides.include? 0
#     # Raise TriangleError
#   end
#
#   numEqualSides = 0
#   sides.each do |side|
#     if sides.count(side) > 1
#       numEqualSides += 1
#     end
#   end
#
#   puts "Equal sides: #{numEqualSides}"
#
#   if numEqualSides == 3
#     return :equilateral
#   elsif numEqualSides == 2
#     return :isosceles
#   elsif numEqualSides == 0
#     return :scalene
#   end
# end
