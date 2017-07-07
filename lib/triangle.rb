class Triangle
  attr_accessor :x, :y, :z, :sides

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
    @sides = [@x, @y, @z]
  end

  def equilateral
    @x == @y && @x == @z
  end

  def isosceles
    ((@x == @y) && (@x + @y) > @z) || ((@y == @z) && (@y + @z) > @x )|| ((@z == @x) && (@z + @x) > @y)
  end

  def scalene
    @x != @y && @y != @z && @z != @x
  end

  def illegal
    @sides.any? {|side| side <= 0} || ((@x + @y) <= @z) || ((@y + @z) <= @x) || ((@z + @x) <= @y)
  end

  def kind
    if self.illegal
    begin
      raise TriangleError
      end
    elsif self.equilateral
      :equilateral
    elsif self.isosceles
      :isosceles
    elsif self.scalene
      :scalene
    end
  end

end

class TriangleError < StandardError

end
