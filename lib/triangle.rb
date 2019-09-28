class Triangle

 attr_reader :a, :b, :c

 def initalize(a, b, c)
  @a = a
  @b = b
  @c = c
 end

 def valid
   triangle = [(a + b > c), (a + c > b), (b + c > a)]
   [a, b, c].each {|x| triangle << false if x <= 0}
   raise TriangleError if triangle.include?(false)
 end

  def kind
    valid
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    end

  class TriangleError < StandardError
  end

end
