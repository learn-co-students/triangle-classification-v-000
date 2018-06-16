class Triangle
  attr_accessor


  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    real_triangle
    if @one == @two && @one == @three
      return :equilateral
    elsif @one == @two || @one == @three || @two == @three
      return :isosceles
    else
      return :scalene
    end
  end

  def real_triangle
    real_triangle = [(@one + @two > @three), (@one + @three > @two), (@two + @three > @one)]
    [@one, @two, @three].each {|side| real_triangle << false if side <= 0}
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end
end
