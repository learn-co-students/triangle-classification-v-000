class Triangle
  attr_reader :one, :two, :three
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  def kind
    check_triangle
    if @one == @two && @two == @three
      :equilateral
    elsif @one == @two || @one == @three || @two == @three
      :isosceles
    else
      :scalene
    end
  end
  def check_triangle
    triangle = [(one + two > three), (one + three > two), (two + three > one)]
    [one, two, three].collect { |n| triangle << false if n <= 0 }
    raise TriangleError if triangle.include?(false)
  end
end
class TriangleError < StandardError

end
