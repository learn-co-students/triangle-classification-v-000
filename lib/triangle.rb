class Triangle
    attr_accessor :sideone,:sidetwo, :sidethree
  @@array = [@sideone,@sidetwo,@sidethree]
  def initialize(one,two,three)
    @sideone=one
    @sidetwo=two
    @sidethree=three
  end

  def kind
    if @sideone == 0 && @sidetwo == 0 && @sidethree == 0
      raise TriangleError  
    elsif @sideone <= 0 || @sidetwo <= 0 || @sidethree <= 0
      raise TriangleError  
    elsif  @sideone+@sidetwo <= @sidethree || @sidetwo+@sidethree <= @sideone || @sideone+@sidethree <= @sidetwo
       raise TriangleError
    elsif @sideone == @sidetwo && @sidetwo == @sidethree
      :equilateral
    elsif @sideone == @sidetwo || @sidetwo == sidethree || @sidethree == @sideone
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

end