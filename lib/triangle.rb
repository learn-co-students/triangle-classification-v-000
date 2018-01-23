class Triangle
  attr_accessor :value1, :value2, :value3

  def initialize(value1, value2, value3)
    @value1 = value1
    @value2 = value2
    @value3 = value3
  end

  def kind
    validate_triangle
    if @value1 == @value2 &&   @value2 == @value3
       :equilateral
    elsif @value1 == @value2 ||   @value2 == @value3  ||  @value1 == @value3
       :isosceles
    else
       :scalene
    end
  end

  def validate_triangle
    real_triangle = [(value1 + value2 > value3), (value1 + value3 > value2), (value2 + value3 > value1)]
    [value1, value2, value3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
#  def message
#    "Cant create triangle with parameter passed"
#  end
end

triangle = Triangle.new(1,1,1)
triangle.kind
#triangle1 = Triangle.new(7,3,1)
#triangle1.kind
#triangle2 = Triangle.new(4,1,2)
#triangle2.kind
#triangle2 = Triangle.new(0,0,0)
#triangle2.kind
