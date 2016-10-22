class Triangle
  # write code here
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind

    if self.is_valid?

        return :equilateral if [@l1, @l2,  @l3].uniq.length == 1

        return :isosceles  if (@l1 == @l2 && @l1 != @l3) || (@l2 == @l3 && @l2 != @l1) || (@l1 == @l3 && @l1 != @l2)

        return :scalene  if [@l1, @l2, @l3].uniq.length == 3

    else
        raise TriangleError
    end
  end

  def is_valid?
    a, b, c = [@l1, @l2, @l3].sort
    a + b > c ? true : false
  end

end
class TriangleError < StandardError
 "This is not a legal triangle"
end
