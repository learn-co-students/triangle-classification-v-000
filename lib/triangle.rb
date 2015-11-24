class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if valid_triangle? == false
      begin
        raise TriangleError
      end
    else
      if @a == @b && @b == @c
        return :equilateral
      elsif @a == @b || @a == @c || @b == @c
        return :isosceles
      else
        return :scalene
      end
    end
  end

  def valid_triangle?
    ([@a,@b,@c].all?{|x| x>0} && (@a+@c > @b) && (@b+@c > @a) && (@a+@b >@c))
  end
end

class TriangleError < StandardError
  def message
    puts "This is not a valid triangle!"
  end
end
