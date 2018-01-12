class Triangle

  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if @length <= 0 || @width <= 0 || @height <= 0
      raise TriangleError
    elsif (@length + @width) <= @height || (@length + @height) <= @width || (@height + @width) <= @length
      raise TriangleError
    elsif @length == @width && @width == @height
      return :equilateral
    elsif @length == @width || @width == @height || @length == @height
      return :isosceles
    elsif @length != @width && @width != @height
      return :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "error"
  end
end
