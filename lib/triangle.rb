class Triangle
    attr_reader :a, :b, :c

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def kind
      valid?
      if a == b && a == c
        :equilateral
      elsif (a == b && a != c) || (b == c && b != a) || (a == c && a != b)
        :isosceles
      else
        :scalene
      end
    end

    def valid?
      if (a > 0 && b > 0 && c > 0) && (a  b > c) && (b  c > a) && (a  c > b)
        true
      else
        raise TriangleError
      end
    end

  end

  class TriangleError < StandardError
  end
