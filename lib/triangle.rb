class Triangle
  # write code here

  attr_accessor :a, :b, :c


  def initialize(one,two,three)
    @a = one
    @b = two
    @c = three

  end

  def kind
    #:equilateral :isosceles :scalene
    #if all 3 sides are equal, equilateral
    #if 2 sides are equal, isosceles
    #if no sides are equal, scalene
    #any 2 sides always have to be bigger than the third
    # valid for any triangle a+b > c && a+c > b && b+c > a
    if (a+b > c && a+c > b && b+c > a) == false
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene 
      end
    end
  end
end


class TriangleError < StandardError
  def message
    "Give all three sides of the triangle a length"
  end
end