class Triangle
  # triangle code
  attr_accessor :angles, :kind
  def initialize(one, two, three)
    @angles = [one, two, three].sort
    if @angles[0] <= 0 || @angles[1] <= 0 || @angles[2] <= 0 || @angles[2] >= @angles[1] + @angles[0]
      raise TriangleError
    elsif @angles[0] == @angles[1] && @angles[0] == @angles[2]
      @kind = :equilateral
    elsif @angles[0] == @angles [1] || @angles[1] == @angles[2] || @angles[2] == @angles[0]
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end
end
class TriangleError < StandardError
  # triangle error code
  def message
    "must be a valid triangle"
  end
end
