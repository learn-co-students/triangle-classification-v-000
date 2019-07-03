class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize (length_1, length_2, length_3)
    @length_1=length_1
    @length_2=length_2
    @length_3=length_3
  end

  def kind
    check_triangle
    if length_1==length_2 && length_2==length_3
      :equilateral
    #elsif length_1 != length_2 || length_3 && length_2 != length_3
      #:scalene
    elsif length_2==length_3 || length_1==length_2 || length_1==length_3
      :isosceles
    else
      :scalene
    end
  end

  def check_triangle
    real_triangle = [(length_1+ length_2 > length_3), (length_1 + length_3 > length_2), (length_2 + length_3 > length_1)]
    [length_1, length_2, length_3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end


  class TriangleError < StandardError


    # triangle error code
  end
  # write code here
end
