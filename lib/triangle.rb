class Triangle
  attr_accessor :isosceles, :equilateral, :scalene

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind

  illegal_triangle?

    if @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif
      @length1 == @length2 || @length2 == @length3|| @length1 == @length3
      :isosceles
    else
      :scalene
    end
  end

  def illegal_triangle?
    real_triangle = [(@length1 + @length2 > @length3), (@length1 + @length3 > @length2), (@length2 + @length3 > @length1)]
    [@length1 , @length2, @length3].each { |length| real_triangle << false if length <= 0}
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
    def message
      "this is an illegal triangle!"
    end
  end

end
