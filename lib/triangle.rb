
class Triangle
  
  attr_reader :arg1, :arg2, :arg3
  
  def initialize(arg1, arg2, arg3)
    @arg1 = arg1
    @arg2 = arg2
    @arg3 = arg3
    @ary = [arg1, arg2, arg3]
  end

  def kind
    ary = @ary.sort!


    sum_1 = arg1 + arg2
    sum_2 = arg2 + arg3
    sum_3 = arg1 + arg3

    raise TriangleError if ary.include?(0) || ary.any? {|num| num <= 0} 
    raise TriangleError if sum_2 <= arg1 || sum_3 <= arg2 || sum_1 <= arg3
  
    return :equilateral if ary[0] == ary[1] && ary[0] == ary[2]
    return :isosceles if ary[0] != ary[1] && ary[0] != ary[2] && ary[1] == ary[2]
    return :scalene if ary[0] != ary[1] && ary[1] != ary[2]
  
  end
end

class TriangleError < StandardError
  def message
     puts "This is an invalid triangle!"
  end
end

 