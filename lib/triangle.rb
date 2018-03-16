class Triangle
  def initialize(sideone, sidetwo, sidethree)
    @sideone = sideone
    @sidetwo = sidetwo
    @sidethree = sidethree
  end

  def kind
      return_value = nil
      # Equilateral triangles
      if @sideone == @sidetwo && @sidetwo == @sidethree
        return_value = :equilateral
      # isoceles triangles
      elsif @sideone == @sidetwo || @sidetwo == @sidethree || @sidethree == @sideone
        return_value = :isosceles
      else
        return_value = :scalene
      end


  if (@sideone + @sidetwo <= @sidethree ||
    @sidetwo + @sidethree <= @sideone ||
    @sidethree + @sideone <= @sidetwo) || @sideone == 0
    return_value = nil
    raise TriangleError
  end

  return_value
end
end


class TriangleError < StandardError

end
