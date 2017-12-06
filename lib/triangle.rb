class Triangle
  attr_accessor :kind

  def initialize(a,b,c)
    if a>0 && b>0 && c>0
      if a+b>c && b+c>a && a+c>b
        if a==b && b==c
          self.kind = :equilateral
        elsif a!=b && b!=c && a!=c
          self.kind = :scalene
        else
          self.kind = :isosceles
        end
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError

end
