require 'pry'

class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # binding.pry
    triangle_validation
    if a == b && b == c
      :equilateral
    elsif (a == b && a != c || a == c && a != b) || a != b && b == c
      :isosceles
    elsif a != b && a != c && b != c
      :scalene
    end
  end

  def triangle_validation
    validation_proof_pass = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each {|side| validation_proof_pass << false if side <= 0}
    raise TriangleError if validation_proof_pass.include?(false)
    end

  class TriangleError < StandardError
    def no_size_message
      puts "triangles cannot have a size length of 0"
    end
  end
end
