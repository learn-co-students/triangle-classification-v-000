require 'pry'

class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1=l1
    @l2=l2
    @l3=l3
  end

  def kind
    if [@l1,@l2,@l3].any?{|o| o <= 0} || [@l1,@l2,@l3].any?{|o| (@l1+@l2+@l3-o) <= o}
      raise TriangleError
    elsif (@l1 == @l2) && (@l2 == @l3)
      :equilateral
    elsif (@l1==@l2) || (@l2==@l3) || (@l3==@l1)
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
