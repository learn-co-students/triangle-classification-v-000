class Triangle

  def kind(a,b,c)
    if a => 1 && b >=1 && c >=1 && a + b > c && a +c > b && c + B > a
      if a == b && == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      elsif a != b && b!=c && a != c
        :scalene
      end
    else
      begin
      raise TriangleError
    end
  end


class TriangleError < StandardError
 # triangle error code
end
