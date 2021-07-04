class Triangle
  attr_accessor :a, :b, :c
  ### a = side 1 of triangle ### b = side 2 of triangle  ### c = side 3 of triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

    ( a > 0 && b > 0 && c > 0 ) && (a + b > c) && (a + c > b) && (b + c > a) ?  nil : ( raise TriangleError )

  end

  def kind

    if ( a == b ) && ( a == c )
        :equilateral
      elsif ( a == b && a != c)  || ( a == c && a != b ) || ( b == c && b != a )
        :isosceles
      else  ( a != b ) && ( a != c ) && ( b != c )
        :scalene
    end

  end

  ##################################################
    class TriangleError < StandardError

    end
  ##################################################


end
