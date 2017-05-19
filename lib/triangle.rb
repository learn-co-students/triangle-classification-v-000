class Triangle



  def initialize(a, b, c)
    @a= a
    @b= b
    @c= c
  end

  def kind
    valid_triangle
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
end

def valid_triangle
real_triangle = [(@a + @b > @c), (@a + @c > @b), (@b + @c > @a)]
[@a, @b, @c].each { |s| real_triangle << false if s <= 0 }
raise TriangleError if real_triangle.include?(false)
end
end

class TriangleError < StandardError

end
