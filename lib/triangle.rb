class Triangle
  # write code here
  attr_accessor :arg1, :arg2, :arg3

  def initialize (arg1, arg2, arg3)
    @arg1 = arg1
    @arg2 = arg2
    @arg3 = arg3
  end

  def kind
    validate_triangle

    if arg1 == arg2 && arg2 == arg3
      :equilateral
    elsif arg1 == arg2 || arg2 == arg3 || arg1 == arg3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
      real_triangle = [(arg1 + arg2 > arg3), (arg1 + arg3 > arg2), (arg2 + arg3 > arg1)]
      [arg1, arg2, arg3].each { |s| real_triangle << false if s <= 0 }
      raise TriangleError if real_triangle.include?(false)
    end



  class TriangleError < StandardError
      # triangle error code
    end

end
