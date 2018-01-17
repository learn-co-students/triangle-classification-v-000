class Triangle
  # write code here
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if
      length <= 0 || width <= 0 || height <= 0
      raise TriangleError
    elsif
      length + width <= height || length + height <= width || width + height <= length
      raise TriangleError
    elsif
      length == width && width == height
      :equilateral
    elsif
      length == width || width == height || length == height
      :isosceles
    elsif
      length != width && width != height && length != height
      :scalene
    end
  end
end

  class TriangleError < StandardError
    def errorcode
      "error"
    end
  end
