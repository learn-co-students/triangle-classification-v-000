class Triangle
  # write code here\

  def initialize(l1, l2, l3)


    if l1 >= (l2 + l3) || l2 >= (l1 + l3) || l3 >= (l1 + l2)
      raise TriangleError
    end

    if l1 <= 0 || l2 <= 0 ||l3 <= 0
      raise TriangleError
    end

    if l1 == nil || l2 == nil ||l3 == nil
      raise TriangleError
    end

    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 == @l2 && @l1 == @l3
      return :equilateral
    elsif @l1 == @l2 || @l2 == @l3 || @l3 == @l1
      return :isosceles
    else
      return :scalene
    end
  end

end



class TriangleError < StandardError
  def message
    "This is not a valid triangle."
  end
end
