class Triangle
  attr_accessor :hyp, :opp, :adj

  def initialize(hyp, opp, adj)
    @hyp = hyp
    @opp = opp
    @adj = adj
  end

  def kind

    if @hyp <= 0 || @opp <= 0 || @adj <= 0
      raise TriangleError
    elsif @hyp + @opp <= @adj || @opp + @adj <= @hyp || @hyp + @adj <= @opp
      raise TriangleError
    elsif @hyp == @opp && @opp == @adj
      :equilateral
    elsif @hyp == @opp || @opp == @adj || @hyp == @adj
      :isosceles
    elsif @hyp != @opp && @opp != @adj && @hyp != @adj
      :scalene
    end
  end
end

class TriangleError < StandardError

end
