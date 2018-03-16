class Triangle
  def initialize(x, y, z)
    @triangle = []
    @triangle << x << y << z
  end

  def kind
    if triangle_error?
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end

  private
  def equilateral?
    side = @triangle[0]
    @triangle.all? {|element| element == side}
  end

  def isosceles?
    @triangle.uniq.count == 2
  end

  def scalene?
    @triangle.uniq.count == 3
  end

  def triangle_error?
    no_size? || negative_sides? || inequality?
  end

  def no_size?
    @triangle.all? {|element| element == 0}
  end

  def negative_sides?
    @triangle.any? {|element| element <= 0}
  end

  def inequality?
    triangle = @triangle.sort
    triangle[0] + triangle[1] <= triangle[2]
  end
end

class TriangleError < StandardError
end

