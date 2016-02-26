class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  @@sides = []
  @@type = nil

  def initialize(side1,side2,side3)
    @@sides = [side1,side2,side3]

  end

  def kind
    case
      when @@sides.any? {|side| side <= 0} || @@sides.inject(0){|sum,item| sum + item }-@@sides.max <= @@sides.max
        begin
          raise TriangleError
        end
      when @@sides.uniq.length == 2
        @@type = :isosceles
      when @@sides.uniq.length == 1
        @@type = :equilateral
      else
        @@type = :scalene
    end
  end
end

class TriangleError < StandardError

end