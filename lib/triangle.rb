class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    @a, @b, @c = [@a, @b, @c].sort
    if @a <= 0 or @a + @b <= @c
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   error.message
      end
    #   return :equilateral if a == c
    #   return :isosceles if a == b or b == c
    #   return :scalene
    # end
    end
    if ((@a==@b) && (@b==@c) && (@c==@a))
      :equilateral
    elsif ((@a==@b)|| (@a==@c) || (@b == @c))
      :isosceles
    else
      #@a != @b != @c
      #b != c && a != c
      :scalene
    end
  end

#More Elegant Solutions:
#case [a,b,c].uniq.size
# when a then :equilateral
# when b then :isosceles
# else        :scalene
# end
#OR

# [:equilateral, :isosceles, :scalene].fetch([a,b,c].uniq.size - a)
end

class TriangleError < StandardError
  def message
    puts "This triangle is invalid."
  end
end

# class TriangleError < StandardError
#   def initialize(msg='This triangle is broke')
#     super
#   end
# end
#
# raise TriangleError, 'This triangle is realll broke'
