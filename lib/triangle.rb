class Triangle
  # write code here
  attr_accessor :sone, :stwo, :sthree, :sides

  def initialize(sone,stwo,sthree)
    @sone=sone
    @stwo=stwo
    @sthree=sthree
    @sides=[@sone,@stwo,@sthree]
  end

  def kind
    if @sides.any? {|side| side<=0} || (@sone+@stwo)<=@sthree || (@stwo+@sthree)<=@sone || (@sone+@sthree)<=@stwo
      raise TriangleError
    else
      if @sone==@stwo && @sone==@sthree
        :equilateral
      elsif @sone==@stwo || @sone==@sthree || @stwo==@sthree
        :isosceles
      elsif @sone!=@stwo && @stwo!=@sthree && @sone!=@sthree
        :scalene
      else
        begin
          raise TriangleError
        rescue TriangleError=>error
          puts error.message
        end
      end
    end
  end
  class TriangleError< StandardError
    def message
      "something"
    end
  end

end
