class Triangle
  attr_accessor :kind

  def initialize(length1, length2, length3)
    @side_1 = length1
    @side_2 = length2
    @side_3 = length3
  end

  def kind
    if self.sides.any? {|s| s <= 0} || triangle_inequality
      # begin
        raise TriangleError
      # rescue TriangleError => error
        # puts error.message
      # end
    elsif self.sides.uniq.size == 1
      self.kind = :equilateral
    elsif self.sides.uniq.size == 2
      self.kind = :isosceles
    elsif self.sides.uniq.size == 3
      self.kind = :scalene
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  def triangle_inequality
    @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
  end

  def sides
    @sides = []
    @sides << @side_1
    @sides << @side_2
    @sides << @side_3
  end
end

class TriangleError < StandardError
  def message
    "A triangle cannot have a side of 0 or less length. A triangle is illegal if the sum of any two of its sides is less than the third side."
  end
end
