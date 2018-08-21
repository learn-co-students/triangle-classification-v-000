class Triangle

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if is_illegal?
      raise TriangleError
    end

    if is_equilateral?
      :equilateral
    elsif is_isosceles?
      :isosceles
    else
      :scalene
    end
  end

  def is_equilateral?
    @l1 == @l2 && @l2 == @l3
  end

  def is_isosceles?
    @l1 == @l2 || @l2 == @l3 || @l1 == @l3
  end

  def is_illegal?
    (@l1 <= 0 || @l2 <= 0 || @l3 <= 0) ||
    (@l1 < @l3 && @l2 < @l3 && @l1 == @l2) ||
    (@l1 < @l2 && @l3 < @l2 && @l1 == @l3) ||
    (@l1 > (@l2 + @l3))
  end

  class TriangleError < StandardError
  end
end
