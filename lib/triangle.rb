
class Triangle
  attr_accessor :sides

  def sides
    @sides.sort!
  end

  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def badtriangle?
    sides.any? == 0 || sides[0] + sides[1] <= sides[2]
  end

  def kind
    if badtriangle?
      raise TriangleError
    else
      if sides[0] == sides[2]
        :equilateral
      elsif sides[0] == sides[1] || sides[1] == sides[2]
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  puts "gimmi a real triangle"
end
