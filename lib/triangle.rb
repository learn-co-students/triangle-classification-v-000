class Triangle
  # write code here
  attr_reader :side1, :side2, :side2

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sorted_array = [@side1,@side2,@side3].sort

    if sorted_array.all? {|side| side <= 0} ||
      ((sorted_array[0] + sorted_array[1]) <= sorted_array[2])
      begin
        raise TriangleError
        puts error.message
      end
    else
      if (@side1 == @side2) && (@side2 == @side3)
        :equilateral
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side3 == @side1)
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
  def message
    "Not a triangle"
  end
end
