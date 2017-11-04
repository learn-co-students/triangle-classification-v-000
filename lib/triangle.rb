require 'pry'

class Triangle

  attr_accessor :lega, :legb, :legc
  # write code here
  def initialize(lega, legb, legc)
    @lega = lega
    @legb = legb
    @legc = legc
    @legs = [@lega,@legb,@legc]
  end

  def kind
    if valid?
      if @lega == @legb || @legb == @legc || @lega == @legc
        if @lega==@legb && @legb == @legc
          :equilateral
        else
          :isosceles
        end
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end

  end

  def valid?
    validity = true

    @legs.each {|leg| validity = false if leg <= 0}
    #binding.pry
    if (@lega >= @legb + @legc) || (@legb >= @lega + @legc) || (@legc >= @lega + @legb)
      validity = false
    end
    validity
  end
end

class TriangleError < StandardError
  def message
    puts "The triangle legs are not valid"
  end

end
