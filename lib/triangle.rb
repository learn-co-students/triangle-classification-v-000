class Triangle
  attr_accessor :first, :second, :third
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if illegal
      begin
        raise TriangleError
      end
    elsif first == second && second == third
      :equilateral
    elsif first != second && second != third && first != third
      :scalene
    else
      :isosceles
    end
  end

  def illegal
    if first <= 0 && second <= 0 && third <= 0
    #if first < 1 && second < 1 && third < 1
      true
    elsif first + second <= third || second + third <= first || first + third <= second
      true
    else
      false
    end
  end
end

class TriangleError < StandardError
end
