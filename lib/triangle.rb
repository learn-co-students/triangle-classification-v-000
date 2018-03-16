require 'pry'

class Triangle

  attr_accessor :side_1, :side_2, :side_3, :kind

    def initialize(side_1,side_2,side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
      kind = self.kind
    end

  def kind

      self.is_triangle == false ||(@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
        #binding.pry
        raise TriangleError
        puts TriangleError.message

    elsif @side_1 == @side_2 && @side_2 == @side_3
      #equilateral triangles have equal sides
      return :equilateral
      # type
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      #isosceles triangles have last two sides equal
      return  :isosceles
      # type
    else
      #scalene triangles have no equal sides
      return :scalene
      # type
    end
  end

  def is_triangle
    @side_1 + @side_2 > @side_3 &&
    @side_1 + @side_3 > @side_2 &&
    @side_2 + @side_3 > @side_1
  end

end

class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle must always
    be greater than the length of the third side."
  end
end
