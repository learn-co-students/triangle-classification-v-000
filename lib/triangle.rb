class Triangle
    attr_accessor :length, :width, :height, :equilateral
  
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

    def no_size
        length == 0 || width == 0 || height == 0
    end

    def negative
        length < 0 || width < 0 || height < 0
    end

    def inequality
        length + width <= height  || length + height <= width || width + height <= length
    end

  def kind
    if self.no_size || self.negative || self.inequality
        raise TriangleError
    elsif length == width && width == height
        :equilateral
    elsif length == width || length == height || width == height
        :isosceles
    elsif length != width && length != height && width != height
        :scalene
    end
  end
end

class TriangleError < StandardError
    def message
        "That is not a valid triangle."
    end
end