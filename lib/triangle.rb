class Triangle
  attr_accessor :A, :B, :C, 

  def initialize (A:,B:,C:)
    @A = A
    @B = B
    @C = C
  end

  def kind

    if A + B < C || A + C < B || B + C < A 
        rasie TriangleError
      rescue TriangleError => error
    elsif A == B == C 
      return :equilateral
    elsif A^2 + B^2 == C^2
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    "The sum of any two sides must be greater than the third side.  These measurements are not a Triangle.  Try again Champ!"
  end


end