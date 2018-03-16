class Triangle
  # write code here
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if (@l1 == 0 || @l2 == 0 || @l3 == 0 ||
      @l1 + @l2 <= @l3 ||
      @l1 + @l3 <= @l2 ||
      @l2 + @l3 <= @l1)
          raise TriangleError
      elsif @l2 == @l1 && @l2 == @l3
      :equilateral
    elsif @l2 != @l1 && @l2 != @l3 && @l1 != @l3
      :scalene
    else
      :isosceles
    end
  end
end


class TriangleError < StandardError
  def message
    puts "the values are not valid triangle values."
  end
end
