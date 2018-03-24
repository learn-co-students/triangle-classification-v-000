class Triangle
  attr_accessor :equilateral, :iscoceles, :scalene,
                :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end # initialize



  def triangle?
    if side_1 > 0 && side_2 > 0 && side_3 > 0
      if (side_1 + side_2 > side_3)
        if (side_1 + side_3 > side_2)
          if (side_2 + side_3 > side_1)
            true
          end # deep-if
        end # middle-if
      end # second-if

    else
      false
    end # outer-first-if
  end

  def kind
    if triangle? == true
      if side_1 == side_2 && side_1 == side_3
        :equilateral
      elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
        :isosceles
      else
        :scalene
      end # inner-if
    else
      raise TriangleError
    end # outermost-if
  end # method

  #####################################
  # Class Error Method
  #####################################

  class TriangleError < StandardError

    def message
      "INVALID Triangle!"
    end

  end # Triangle Error class

end # Triangle class
