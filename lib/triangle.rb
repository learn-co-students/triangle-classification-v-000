class Triangle
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 
  
  def kind 
    is_valid? 
    if @a == @b && @b == @c 
      :equilateral
    elsif
      @a != @b && @b != @c && @c != @a
      :scalene
    else 
      :isosceles
    end 
  end
  
  def is_valid?
    if @a + @b <= @c || @b + @c <= @a || @c + @a <= @b
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError 
  end 
end

  # def validate_triangle
  #   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  #   [a, b, c].each { |s| real_triangle << false if s <= 0 }
  #   raise TriangleError if real_triangle.include?(false)
  # end