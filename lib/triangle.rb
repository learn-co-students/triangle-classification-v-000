require 'pry'
class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
        :isosceles
    elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
        :scalene
      elsif Triangle.kind != :scalene || :isosceles || :equilateral
        begin
          raise TriangleError
        rescue TriangleError => error
            puts error.message
          end
    end
  end

    class TriangleError < StandardError
      def message
      "That is not a triangle."
      end
    end

end
