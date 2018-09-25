class Triangle
 attr_reader :arg1, :arg2, :arg3
 
 def initialize(arg1, arg2, arg3)
   @arg1 = arg1
   @arg2 = arg2
   @arg3 = arg3
 end
 
  def kind
    true_triangle
    if arg1 == arg2 && arg2 == arg3
      :equilateral
    elsif arg1 == arg2 || arg2 == arg3 || arg1 == arg3
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
  def true_triangle
    real_triangle = [(arg1 + arg2 > arg3), (arg1 + arg3 > arg2), (arg2 + arg3 > arg1)]
    [arg1, arg2, arg3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end
