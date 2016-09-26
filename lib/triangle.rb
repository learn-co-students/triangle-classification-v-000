require 'pry'
class Triangle

  attr_accessor :left, :right, :bottom

  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
  end

  def kind
    case
    when left <= 0 || right <= 0 || bottom <= 0 || left >= right + bottom || right >= left + bottom || bottom >= right + left
        raise TriangleError
      when @left == @right && @left == @bottom
          :equilateral
      when @left == @right || @left == @bottom || @right == @bottom
          :isosceles
      when @left != @right && @left != @bottom
          :scalene
    end
  end
end


class TriangleError < StandardError

end