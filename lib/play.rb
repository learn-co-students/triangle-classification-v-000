require 'pry'
class Triangle

  attr_reader :a, :b, :c
    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

  def validate_triangle
    a + b > c && b + c > a && a + c > b && a > 0 && b > 0 && c > 0
  end

end

triangle = Triangle.new(7, 3, 2)
triangle.validate_triangle

binding.pry
