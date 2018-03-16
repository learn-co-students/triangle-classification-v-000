class Triangle
  # write code here

  attr_accessor :length, :width, :hypothenuse

  def initialize(length, width, hypothenuse)
      @length = length
      @width = width
      @hypothenuse = hypothenuse
  end

  def kind

    begin

      if length == 0 && width == 0 && hypothenuse == 0
      raise TriangleError
      elsif length < 0 || width < 0 || hypothenuse < 0
      raise TriangleError
    elsif length + width < hypothenuse || width + hypothenuse < length || (width >= length + hypothenuse) 
      raise TriangleError

      elsif length == width && width == hypothenuse
        :equilateral
      elsif length == width || width == hypothenuse || length == hypothenuse
        :isosceles
      else
        :scalene
      end
      end
    end

  end

class TriangleError < StandardError

end
