class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end



  def kind

    if [@a, @b, @c].min <= 0
      raise TriangleError
    elsif @a + @b <= @c || @b + @c <= @a || @c + @a <= @b
      raise TriangleError
    else
      case [@a, @b, @c].uniq.length
      when 1 then :equilateral
      when 2 then :isosceles
      else :scalene
      end
    end
  end

end

class TriangleError < StandardError

end
