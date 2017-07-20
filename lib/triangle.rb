class Triangle

  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    sides = [@l1, @l2, @l3]

    if sides.any?{|side| side <= 0} || sides[0] + sides[1] <= sides[2] || sides[2] + sides[1] <= sides[0] || sides[0] + sides[2] <= sides[1]
      raise TriangleError
    else

      if sides.all? {|side| side == sides[0]}
        :equilateral
      elsif sides.uniq.count != sides.count
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
end
