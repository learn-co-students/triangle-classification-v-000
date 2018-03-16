require 'pry'

class Triangle

  def initialize(side_one, side_two, side_three)
    @triangle = [side_one, side_two, side_three]
    @kind = ''
  end

  def kind
   is_triangle?
      case @triangle.uniq.length
        when 1
          @kind = :equilateral
        when 2
          @kind = :isosceles
        else
          @kind = :scalene
      end
  end


  def is_triangle?
    sorted = @triangle.sort
    if sorted[0] + sorted[1] <= sorted[2] || sorted.any? {|side| side <= 0}
      raise TriangleError
    else
      true
    end
  end

end

class TriangleError < StandardError
end

# test = Triangle.new(0, 0, 0)
# test.kind