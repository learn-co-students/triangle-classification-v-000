require 'pry'

class Triangle
  attr_reader :length1, :length2, :length3

  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @lengths = [length1, length2, length3]
  end

  def kind
    triangles = {:equilateral => 1, :isosceles => 2, :scalene => 3}
    lengths = @lengths.sort
    triangle_inequality_test = lengths[0] + lengths[1] > lengths[2]
    if @lengths.include?("/0|-\d+/") || !triangle_inequality_test
        raise TriangleError
    else
      type = triangles.detect do |triangle, sides|
        @lengths.uniq.size == sides
      end
      type[0]
    end
  end

  class TriangleError < StandardError
  end

end
