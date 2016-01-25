class Triangle
  # write code here
  attr_reader :sides
  def initialize(a, b, c)
    @sides = Array.new([a,b,c])
  end

  def kind
    good_triangles = [
      (sides[0] + sides[1] > sides[2]),
      (sides[0] + sides[2] > sides[1]),
      (sides[2] + sides[1] > sides[0])
      ]
    raise TriangleError if good_triangles.include?(false)

    if sides[0] == sides[1] && sides[1] == sides[2]
      :equilateral
    elsif  sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
