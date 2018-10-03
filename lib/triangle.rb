class Triangle
  attr_accessor :kind
  
  def initialize(v1, v2, v3)
    @v1 = v1
    @v2 = v2
    @v3 = v3
    @v12 = @v1+@v2
    @v13 = @v1+@v3
    @v23 = @v2+@v3
  end
  
  def kind
    if @v1 == @v2 && @v2 == @v3
      @kind = :equilateral
    elsif @v1 == @v2 || @v2 == @v3 || @v1 == @v3
      @kind = :isosceles
    elsif @v1 != @v2 && @v2 != @v3 && @v1 != @v3
      @kind = :scalene
    end
    if @v12 > @v3 && @v13 > @v2 && @v23 > @v1
      @kind
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    def message
      "You raised a Triangle Equality Error!"
    end
  end
end