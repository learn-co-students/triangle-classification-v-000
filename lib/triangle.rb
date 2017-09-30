class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

    @lengths = [a, b, c]
  end



  def kind

    length = @lengths.sort

    if @lengths.any? {|x| x <= 0}
      raise TriangleError, "must be positive lengths!" 
    end

    unless length[0] + length[1] > length[2]
      raise TriangleError, "triangle inequality!" 
    end

    if a == b && b == c && a == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end

    
  end

end

class TriangleError < StandardError

end

