class Triangle

  # write code here

  def initialize(a_length,b_length,c_length)
    @a_length = a_length
    @b_length = b_length
    @c_length = c_length
  end
  attr_accessor :a_length, :b_length, :c_length

  def kind
    two_side_total = a_length + b_length

    if a_length <= 0 || b_length <= 0 || c_length <= 0
      raise TriangleError
    elsif two_side_total < c_length || c_length + a_length == b_length || c_length + b_length <= a_length
      raise TriangleError
    elsif a_length == b_length && b_length == c_length
      :equilateral
    elsif a_length == b_length || a_length == c_length || b_length == c_length
      :isosceles
    else
      :scalene
    end

  end

end

class TriangleError < StandardError
  def message
    "triangles with no size are illegal"
  end
end
