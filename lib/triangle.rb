class Triangle
  attr_accessor :side_1, :side_2, :side_3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @triangle_array = [@side1, @side2, @side3]
  end

  def valid?
    sorted_triangle = @triangle_array.sort
    positive_lengths = @triangle_array.all? {|side| side > 0}
    positive_lengths && (sorted_triangle[0] + sorted_triangle[1] > sorted_triangle[2])
  end

  def kind
    if valid?
      if @triangle_array.uniq.size == 1
        :equilateral
      elsif @triangle_array.uniq.size == 2
        :isosceles
      elsif @triangle_array.uniq.size == 3
        :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
