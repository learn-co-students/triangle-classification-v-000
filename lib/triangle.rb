class Triangle
  attr_accessor :one, :two, :three
  
  def initialize(one,two,three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    list = [@one,@two,@three]
    if (list[0] + list [1] <= list [2] || list[2] + list [1] <= list [0] || list[0] + list [2] <= list [1]) || list.any?{|side| side == 0}
      raise TriangleError
    elsif list.uniq.size == 1
      return :equilateral
    elsif list.uniq.size == 2
      return :isosceles
    else
      return :scalene
    end
  end
  
end

class TriangleError < StandardError
end