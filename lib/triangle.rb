class Triangle
  attr_accessor :length, :width, :height
  def initialize(length,width,height)
    @length= length
    @width= width
    @height= height
  end
  def kind
    if @length + @width <= @height || @width + @height <= @length || @length + @height <= @width || @length <= 0 || @height <= 0 || @width <= 0
      #begin
        raise TriangleError
      #rescue TriangleError => error
          #puts error.message
    #  end

    end
    if @length == @width && @length == @height
      return :equilateral
    elsif @length == @width && @length != @height
      return :isosceles
    elsif @length == @height && @length != @width
      return :isosceles
    elsif @width == @height && @width != @length
      return :isosceles
    else
      return :scalene
    end



  end
  # write code here
end
class TriangleError < StandardError
  def message
    puts "The two sides are not more than the third"
  end
end
