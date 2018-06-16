class Triangle
  attr_accessor


  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    real_triangle
    if @side_one == @side_two && @side_one == @side_three
      return :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      return :isosceles
    else
      return :scalene
    end
  end

  def real_triangle
    real_triangle = [(@side_one + @side_two > @side_three), (@side_one + @side_three > @side_two), (@side_two + @side_three > @side_one)]
    [@side_one, @side_two, @side_three].each {|side| real_triangle << false if side <= 0}
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end
end
