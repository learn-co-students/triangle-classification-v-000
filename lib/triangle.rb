class Triangle
  attr_accessor :side_one, :side_two, :side_three, :sides

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @sides = [side_one, side_two, side_three]
  end

  def ugly?
    @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
  end

  def kind
      #biggest = []
      #biggest << self.sides.max #push largest side in here. Messy, but whatever. There's no easy .sum in Ruby apparently. Blah.

      if self.sides.detect {|s| s <= 0} || ugly? #if sides contains a nonpositive number.
      #elsif biggest >= smallsides[0] + smallsides[1]<--error raising and type/kind classifying worked separately but not together. What a waste of fucking time.
        #begin
        raise TriangleError

        #rescue TriangleError => error
        #puts error.message
      #end

    elsif self.side_one == self.side_two && self.side_two == self.side_three
      return :equilateral

    elsif self.sides == self.sides.uniq         #.uniq rids array (sides) of any dupes, so if sides = sides.uniq, they're all diff.
      return :scalene

    else
      :isosceles
    end
  end
end
  class TriangleError < StandardError
    def message
      "Triangle invalid. Perhaps you're just a square."
    end

end
