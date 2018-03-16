class Triangle
  attr_accessor :sides
  def initialize a, b, c
    @sides=[a,b,c]
  end
  def kind
    if @sides.any? { |e| e<=0 }
      raise TriangleError
    end
    sum=0
    @sides.each { |e| sum+=e }
    if @sides.any? {|e| 2*e>=sum}
      raise TriangleError
    end
    if @sides.all? { |e| 3*e==sum }
      return :equilateral
    elsif @sides[0]==@sides[1]||@sides[0]==@sides[2]||@sides[1]==@sides[2]
      return :isosceles
    else
      return :scalene
    end
  end

end


class TriangleError < StandardError
end
