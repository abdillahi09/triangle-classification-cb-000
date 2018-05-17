class Triangle
  # write code here
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if equilateral != isosceles
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
